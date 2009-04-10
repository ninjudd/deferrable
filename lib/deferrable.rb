module Deferrable
  def deferred(enabled = true, &block)
    if enabled
      deferred_blocks << block
    else
      block.call()
    end
  end

  def complete_deferred
    deferred_blocks.each {|block| block.call}
    deferred_blocks.clear
  end

private

  def deferred_blocks
    @deferred_blocks ||= []
  end
end
