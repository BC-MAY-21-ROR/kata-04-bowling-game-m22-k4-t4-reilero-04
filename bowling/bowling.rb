# frozen_string_literal: true

PINOS = 10
bonus_spare = false
bonus_strike = false
score = 0
turnos = Array.new {}

class BowlingGame
  def self.turno
    primer_lanzamiento = rand(0...PINOS)
    # revisar regla de strike
    score = primer_lanzamiento

    if primer_lanzamiento == 10
      'termina turno'
      bonus_strike = true
      # reglas
      return

    else
      puts " primer lanzamiento : #{primer_lanzamiento}"
      sl = segundo_lanzamiento(primer_lanzamiento, score)

    end

    return primer_lanzamiento, sl
    sleep(1)
  end

  def self.segundo_lanzamiento(turno, marcador)
    pinos_derribados = turno
    pinos_restantes = PINOS - pinos_derribados
    segundo_lance = rand(0...pinos_restantes) + 1
    # revisar regla de spare
    marcador = segundo_lance + marcador
    puts "segundo lanzamiento . #{segundo_lance}"
    puts "total por turno :#{marcador}"
    reglas(pinos_restantes, segundo_lance)
    segundo_lance
  end

  def self.reglas(pinos_restantes, pinos_derribados)
    # strike
    if pinos_derribados == 10
      puts '------bonus strike-----'
      bonus_strike = true
    end
    # spare
    if pinos_restantes == pinos_derribados
      puts '------bonus spare---------'
      bonus_spare = true
    end
  end

  def self.juego
    15.times { |n| $turnos[n] = turno }
  end
end

BowlingGame.juego
puts 'Marcador :'
puts turnos.inspect
