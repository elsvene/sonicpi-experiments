use_bpm 120

live_loop :daumentanz_main do
  use_synth :mod_pulse
  use_synth_defaults release: 0.5, cutoff: rrand(50, 100)
  2.times do
    play_pattern_timed [:g4, :g4, :d4, :d4, :g4, :g4, :d4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
  end
  play_pattern_timed [:b4, :b4, :g4, :g4, :b4, :b4, :g4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
  play_pattern_timed [:d4, :d4, :d4, :d4, :d4, :d4, :g4], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
end

live_loop :bass, delay: 16 do
  sample :bass_thick_c
  sleep 2
end

live_loop :daumentanz_hit, delay: 32 do
  use_synth :pluck
  use_synth_defaults release: 0.5, cutoff: 130
  2.times do
    play_pattern_timed [:g4, :d4, :g4, :d4], [1, 1, 1, 1]
  end
  play_pattern_timed [:b4, :g4, :b4, :g4], [1, 1, 1, 1]
  play_pattern_timed [:d4, :d4, :d4, :g4], [1, 1, 1, 1]
end

live_loop :drum, delay: 64 do
  sample :loop_safari
  sleep 1
end