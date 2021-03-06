package edu.upb.lp.rebotinol.observers;

import org.apache.commons.math3.fraction.Fraction;

import edu.upb.lp.rebotinol.model.house.Mail;

/**
 * This observer is used to watch a rebotinol house. The house will warn its
 * observers when some specific events occur.
 * 
 * @author Alexis Marechal
 * 
 */
public interface RebotinolHouseObserver {
	/**
	 * This method is executed by the observed house when rebotin's memory
	 * changes
	 * 
	 * @param memory
	 *      The new value of the memory
	 */
	public void memoryChanged(Fraction memory);

	/**
	 * This method is executed by the observed house when the mail value changed
	 * 
	 * @param mail
	 *      The new mail.
	 */
	public void mailChanged(Mail mail);

	/**
	 * This method is executed by the observed house when the matrix was sent
	 */
	public void matrixSent();

	/**
	 * This method is executed by the observed house when the matrix was unsent
	 */
	public void matrixUnsent();

	/**
	 * This method is executed by the observed house when Rebotin has met an
	 * error (division by 0, tried to read an empty cell, ...)
	 */
	public void rebotinolErrorOcurred();
	
	/**
	 * This method is executed by the observed house when the error previously set
	 * was solved.
	 */
	public void rebotinolErrorSolved();

	/**
	 * Indicates that the error message has changed and should be updated. This
	 * method should only be called when an error has actually occurred.
	 * @param message The new error message
	 */
	public void errorMessageChanged(String message);
}
