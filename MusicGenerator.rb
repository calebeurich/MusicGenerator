tempo = 70
use_bpm tempo


#main sound
use_synth :square
live_loop :main do
  with_fx :reverb do
    with_fx :compressor do
      play chord(:A, :m11), attack: 2, release: 3
      sleep(4)
      play chord(:D, :"7"), attack: 2, release: 3
      sleep(4)
      play chord(:F, :major7), attack: 2, release: 3
      sleep(4)
      play chord(:C, :major7), attack: 2, release: 3
      sleep(4)
    end
  end
end

sleep(32)

#hi hat
live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
end

sleep(32)

#kick drum
live_loop :kick do
  sample :drum_heavy_kick
  sleep 1.75
  sample :drum_heavy_kick
  sleep 0.75
  sample :drum_heavy_kick
  sleep 0.75
  sample :drum_heavy_kick
  sleep 0.75
end

#first melody
sleep(16)
16.times do
  use_synth :hollow
  with_fx :reverb do
    with_fx :echo do
      play(:g4)
      sleep(0.5)
      play(:e4)
      sleep(0.5)
      play(:c4)
      sleep(0.5)
      play(:a3)
      sleep(0.5)
      play(:d4)
      sleep(0.5)
      play(:b3)
      sleep(0.5)
      play(:g3)
      sleep(0.5)
      play(:a3)
      sleep(0.5)
    end
  end
end

sleep(16)

#move up the c scale
8.times do
  use_synth :piano
  with_fx :reverb do
    play_pattern_timed scale(:c3, :major_pentatonic, num_octaves: 3), 0.25, release: 0.1
  end
end

sleep (16)

#improv on scale
use_synth :piano
128.times do
  play choose(scale(:C3, :major_pentatonic)), release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end

#key change
128.times do
  play choose(chord(:A, :m11)), release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end

#back to C
use_synth :piano
128.times do
  play choose(scale(:C3, :major_pentatonic)), release: 0.3, cutoff: rrand(60, 120)
  sleep 0.25
end

sleep (16)

#second melody
16.times do
  use_synth :hollow
  with_fx :reverb do
    with_fx :echo do
      play(:g4)
      sleep(0.5)
      play(:e4)
      sleep(0.5)
      play(:c4)
      sleep(0.5)
      play(:a3)
      sleep(0.5)
      play(:d4)
      sleep(0.5)
      play(:b3)
      sleep(0.5)
      play(:g3)
      sleep(0.5)
      play(:a3)
      sleep(0.5)
    end
  end
end

sleep (32)
