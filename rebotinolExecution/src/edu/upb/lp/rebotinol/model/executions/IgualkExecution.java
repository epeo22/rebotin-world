package edu.upb.lp.rebotinol.model.executions;

import java.util.List;

import edu.upb.lp.rebotinol.util.RebotinolExecutionException;

public class IgualkExecution extends FixedConditionalExecution {

    /**
     * Constructor
     * @param value The value in this instruction
     */
    public IgualkExecution(List<RebotinolInstructionExecution> subExecutions, int fixedValue) {
        super(subExecutions, fixedValue);
    }

    /**
     * {@inheritDoc} 
     */
    @Override
    protected boolean evalCondition(Double memory) throws RebotinolExecutionException {
        return memory.equals(getFixedValue());
    }

}
