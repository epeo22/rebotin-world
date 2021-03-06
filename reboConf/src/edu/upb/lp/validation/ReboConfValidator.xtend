/*
 * generated by Xtext
 */
package edu.upb.lp.validation

import edu.upb.lp.reboConf.Line
import edu.upb.lp.reboConf.Matrix
import edu.upb.lp.reboConf.ReboConfPackage
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.validation.Check
import edu.upb.lp.reboConf.Fraction

/**
 * Custom validation rules. 
 *
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 * 
 * @author Alexis Marechal
 */
class ReboConfValidator extends AbstractReboConfValidator {
	
	@Check
	def checkMatrixSize(Line line) {
		val lineSize = line.els.size;
		val firstSize = getMatrixLineSize(line);
		if (lineSize != firstSize) {
			error(
				"Todas las filas de una matriz deben tener el mismo tamaño. Esta fila tiene " + line.els.size +
					" elementos, mientras que la primera fila tiene " + firstSize + " elementos",
				ReboConfPackage.Literals.LINE__ELS);
		}
	}

	def getMatrixLineSize(Line line) {
		var container = line as EObject;
		while (!(container instanceof Matrix)) {
			container = container.eContainer();
		}
		val mat = container as Matrix;
		return mat.lines.get(0).els.size;
	}
	
	@Check
	def checkFractionsDenominators(Fraction fr) {
		if (fr.denominator == 0) {
			error (
				"Una fracción no puede tener un denominador nulo",
				ReboConfPackage.Literals.FRACTION__DENOMINATOR);
		}
	}
}
