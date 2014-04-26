package edu.upb.lp.rebotinol.xtextToSwing;

import org.apache.commons.math3.fraction.Fraction;

import edu.upb.lp.rebotinol.RebotinolProgram;
import edu.upb.lp.rebotinol.controller.RebotinolController;
import edu.upb.lp.rebotinol.model.executions.RebotinolInstructionExecution;
import edu.upb.lp.rebotinol.model.executions.SequentialInstructionExecution;
import edu.upb.lp.rebotinol.model.house.RebotinolHouse;
import edu.upb.lp.rebotinol.util.MatrixCloner;
import edu.upb.lp.rebotinol.util.RebotinolExecutionException;
import edu.upb.lp.rebotinol.util.RebotinolFlowException;

/**
 * A rebotinol controller meant to be built after parsing a rebotinol program
 * from Xtext.
 * 
 * @author Alexis
 * 
 */
public class RebotinolXtextController implements RebotinolController {
	private RebotinolHouse _house;
	private Fraction[][] _initialMatrix;
	private Fraction[][] _expectedMatrix;
	private SequentialInstructionExecution _program;

	/**
	 * Constructor
	 * 
	 * @param program
	 *            The Xtext program on which we define this controller
	 * @param initialMatrix
	 *            The initial matrix for executing the program
	 * @param expectedMatrix
	 *            An optional expected matrix as the result of the computation
	 */
	public RebotinolXtextController(RebotinolProgram program,
			Fraction[][] initialMatrix, Fraction[][] expectedMatrix) {
		// Check the input
		if (program == null || program.getInstructions().isEmpty()) {
			throw new IllegalArgumentException(
					"Cannot build a rebotinol world without a program");
		}
		if (initialMatrix == null || initialMatrix.length == 0
				|| initialMatrix[0].length == 0) {
			throw new IllegalArgumentException(
					"Cannot build a rebotinol world without an initial matrix");
		}
		int sizeV = initialMatrix.length;
		int sizeH = initialMatrix[0].length;
		// Clone the initial matrix
		_initialMatrix = MatrixCloner.cloneMatrix(initialMatrix);
		// Create the house and set its initial matrix
		_house = new RebotinolHouse(_initialMatrix);
		// Set the expected matrix
		if (expectedMatrix != null) {
			if (expectedMatrix.length != sizeV
					|| expectedMatrix[0].length != sizeH) {
				throw new IllegalArgumentException(
						"The initial matrix and the expected matrix must have the same size when building a rebotinol world");
			}
			_expectedMatrix = MatrixCloner.cloneMatrix(expectedMatrix);
		} else {
			_expectedMatrix = null;
		}
		// Build the program
		_program = ExecutionBuilderFromXtext.buildExecution(program);
	}

	/**
	 * A constructor without the optional argument expected matrix
	 * 
	 * @param program
	 *            The Xtext program on which we define this controller
	 * @param initialMatrix
	 *            The initial matrix for executing the program
	 */
	public RebotinolXtextController(RebotinolProgram program,
			Fraction[][] initialMatrix) {
		this(program, initialMatrix, null);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RebotinolHouse get_house() {
		return _house;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Fraction[][] get_initialMatrix() {
		return MatrixCloner.cloneMatrix(_initialMatrix);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Fraction[][] get_expectedMatrix() {
		return MatrixCloner.cloneMatrix(_expectedMatrix);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public SequentialInstructionExecution get_program() {
		return _program;
	}

	/**
	 * {@inheritDoc} 
	 */
	@Override
	public void step() throws RebotinolExecutionException, RebotinolFlowException {
		_program.step(_house);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void stepBack() throws RebotinolExecutionException, RebotinolFlowException {
		_program.stepBack(_house);
	}
	
	/**
	 * {@inheritDoc}
	 */
	@Override
	public void setBreakpoint(RebotinolInstructionExecution exec, boolean breakpoint) {
		exec.setBreakpoint(breakpoint);
	}
}