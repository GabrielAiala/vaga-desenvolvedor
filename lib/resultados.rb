class Resultados
  attr_accessor :valor_meta, :valor_realizado, :valor_performance

  def initialize()
    @valor_meta = valor_meta
    @valor_realizado = valor_realizado
    @valor_performance = valor_performance
  end

  def calcula_performance
    return 0.0 if valor_meta.nil?
    return nil if valor_meta.to_f.zero?
    return 1 if valor_realizado.to_f.zero?
    valor_realizado / valor_meta
  end

  def calcula_realizado
    return 0 if valor_realizado.to_f.zero?
    valor_performance = calcula_performance
    valor_meta * valor_performance
  end
end
