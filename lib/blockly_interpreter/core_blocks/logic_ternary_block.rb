class BlocklyInterpreter::CoreBlocks::LogicTernaryBlock < BlocklyInterpreter::Block
  include BlocklyInterpreter::DSLGenerator
  self.block_type = :logic_ternary

  def value(execution_context)
    if values['IF'].value(execution_context)
      values['THEN'].value(execution_context)
    else
      values['ELSE'].value(execution_context)
    end
  end
end
