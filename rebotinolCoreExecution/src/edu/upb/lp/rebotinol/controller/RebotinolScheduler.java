package edu.upb.lp.rebotinol.controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.Timer;

import edu.upb.lp.rebotinol.observers.RebotinolControlObserver;
import edu.upb.lp.rebotinol.util.RebotinolExecutionException;
import edu.upb.lp.rebotinol.util.RebotinolFatalException;
import edu.upb.lp.rebotinol.util.RebotinolFlowException;

/**
 * This class controls the automatic execution of rebotin. When the method play() is called,
 * a {@link Timer} is launched, and it is stopped either when the method stop() is called or when the
 * program meets a breakpoint.
 *
 * @author Alexis Marechal
 *
 */
public class RebotinolScheduler {
	private List<RebotinolControlObserver> _observers = new ArrayList<RebotinolControlObserver>();
	private final RebotinolController _controller;

	private final Timer _playTimer;
	private boolean _forward = true;
	
	/**
	 * Constructor.
	 * @param controller The controller that contains the program to be executed by
	 * this scheduler.
	 */
	public RebotinolScheduler(RebotinolController controller) {
		_controller = controller;
		_playTimer = new Timer(2000, null);
		ActionListener listener = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent event) {
				try {
					if (_forward) {
						_controller.step();
					} else {
						_controller.stepBack();
					}
					if (_controller.isBreakpoint()) {
						stop();
					}
				} catch (RebotinolFlowException e) {
					throw new IllegalStateException(e);
				} catch (RebotinolExecutionException e) {
					throw new IllegalStateException(e);
				} catch (RebotinolFatalException e) {
					throw new IllegalStateException(e);
				}
			}
		};
		_playTimer.addActionListener(listener);
		_playTimer.setRepeats(true);
	}

	public static enum Speeds {
		INSTANTANEOUS(1),
		FAST(100),
		NORMAL(500),
		SLOW(1000),
		VERYSLOW(2000);
		
		private int _ms;
		
		private Speeds(int ms) {
			_ms = ms;
		}
	}

	/**
	 * Register an observer, following the Observer design pattern. 
	 * @param observer The observer to be registered.
	 */
	public void registerObserver(RebotinolControlObserver observer) {
		_observers.add(observer);
	}
	
	/**
	 * Start the automatic execution of the program.
	 */
	public void play() {
		_forward = true;
		if (!_playTimer.isRunning()) {
			_playTimer.start();
			for (RebotinolControlObserver obs : _observers) {
				obs.startPlay();
			}
		}
	}
	
	/**
	 * Stop the automatic execution of the program.
	 */
	public void stop() {
		if (_playTimer.isRunning()) {
			_playTimer.stop();
			for (RebotinolControlObserver obs : _observers) {
				obs.stopPlay();
			}
		}
	}
	
	/**
	 * Start the automatic execution of the program.
	 */
	public void playBack() {
		_forward = false;
		if (!_playTimer.isRunning()) {
			_playTimer.start();
			for (RebotinolControlObserver obs : _observers) {
				obs.startPlayBack();
			}
		}
	}
	
	/**
	 * Set the speed of the automatic execution.
	 * @param ms The delay in ms between each automatic step.
	 */
	public void setSpeed(Speeds speed) {
		_playTimer.setDelay(speed._ms);
	}
	
	/**
	 * @return true if the automatic execution of the program is currently running
	 */
	public boolean isRunning() {
		return _playTimer.isRunning();
	}
}
