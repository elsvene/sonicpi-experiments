4.times do
  sample :ambi_dark_woosh
  sleep 2
end

sample :ambi_lunar_land
sleep 0.25

live_loop :main do
  with_fx :wobble do
    with_fx :slicer do
      count = 0;
      4.times do
        count = count + 1;
        play :c4, pitch: rrand(1, 2)
        if (count > 2)
          sample :bd_haus
        end
        sleep 0.25
      end
      play :d4
      sample :bd_haus
      sleep 0.5
      play :f4
      sample :bd_haus
      sleep 0.5
      sample :ambi_glass_hum
    end
  end
end

live_loop :drum, delay: 16 do
  sample :drum_heavy_kick
  sleep 1
end

live_loop :hihat , delay: 24 do
  sample :drum_cymbal_pedal
  sleep 0.25
end

live_loop :scratch, delay: 32 do
  4.times do
    with_fx :slicer do
      sample :vinyl_scratch
      sleep 0.25
    end
  end
  sample :vinyl_scratch
  sleep 1
end

live_loop :synth, delay: 40 do
  use_synth :prophet
  play :e1, release: 8, cutoff: rrand(70, 130)
  sleep 8
end

