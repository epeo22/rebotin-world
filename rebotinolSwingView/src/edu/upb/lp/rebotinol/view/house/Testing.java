package edu.upb.lp.rebotinol.view.house;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import javax.swing.Timer;

import edu.upb.lp.rebotinol.examples.RebotinolSimpleExample;
import edu.upb.lp.rebotinol.model.house.RebotinolHouse;
import edu.upb.lp.rebotinol.util.RebotinolFatalException;

public class Testing {
	private static void createAndShowGUI() {

		JFrame.setDefaultLookAndFeelDecorated(true);
		JFrame frame = new JFrame("Matriz Experimental");

		RebotinolSimpleExample ex = new RebotinolSimpleExample();
		final RebotinolHouse house = ex.getHouse();
		MatrixPanelBuilder demo = new MatrixPanelBuilder(house,ex.getInitialMatrix());
		frame.setContentPane(demo.createContentPane());

		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(800, 600);
		frame.setVisible(true);
		ActionListener listener = new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					house.setPosition(3, 3);
				} catch (RebotinolFatalException e1) {
					throw new IllegalStateException(e1);
				}
				
			}
		};
		Timer timer = new Timer(2000, listener);
		timer.start();
	}

	public static void main(String[] args) {

		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				createAndShowGUI();
			}
		});
	}
}