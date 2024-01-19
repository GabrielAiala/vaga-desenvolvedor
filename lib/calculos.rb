class Calculos
  def self.performance(valor_meta, valor_realizado)
    return 0.0 if valor_meta.nil?
    return nil if valor_meta.to_f.zero?
    return 1 if valor_realizado.to_f.zero?
    valor_realizado.to_f / valor_meta.to_f
  end
end
