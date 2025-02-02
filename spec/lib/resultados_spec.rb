require 'rails_helper'
require 'resultados'

RSpec.describe Resultados, type: :lib do
  describe "Calcula performance" do
    it "com atributos validos" do
      resultado = Resultados.new
      resultado.valor_meta = 10
      resultado.valor_realizado = 20

      expect(resultado.calcula_performance).to eq(2.0)
    end

    it "com valor realizado valido e meta zero" do
      resultado = Resultados.new
      resultado.valor_meta = 0
      resultado.valor_realizado = 20

      expect(resultado.calcula_performance).to eq(nil)
    end

    it "com valor realizado valido e meta null" do
      resultado = Resultados.new
      resultado.valor_meta = nil
      resultado.valor_realizado = 20

      expect(resultado.calcula_performance).to eq(0.0)
    end

    it "com valor meta valido e realizado zero" do
      resultado = Resultados.new
      resultado.valor_meta = 10
      resultado.valor_realizado = 0

      expect(resultado.calcula_performance).to eq(1)
    end
  end

  describe "Calcular realizado" do
    it "com valor realizado valido" do
      resultado = Resultados.new
      resultado.valor_realizado = 1
      resultado.valor_meta = 1

      expect(resultado.calcula_realizado).to eq(1)
    end

    it "com valor realizado zero" do
      resultado = Resultados.new
      resultado.valor_realizado = 0
      resultado.valor_meta = 1

      expect(resultado.calcula_realizado).to eq(0)
    end

    it "com valor realizado null" do
      resultado = Resultados.new
      resultado.valor_realizado = nil
      resultado.valor_meta = 1

      expect(resultado.calcula_realizado).to eq(0)
    end

  end
end
