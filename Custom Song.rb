sample :bd_boom, amp: 1
sleep 1

sample :bd_boom, amp: 2
sleep 1

sample :bd_boom, amp: 3
sleep 1

my_beyonce = "C:/Users/Lyneth_Flores/Downloads/my_beyonce.wav"

sample my_beyonce
use_bpm 100

# Define the chords with a groove
chords = [
  [:G, :D, :E, :C],
  [:G, :D, :E, :C]
]

# Add some rhythm
live_loop :play_chords do
  chords.each do |chord|
    play_chord chord, release: 0.3
    sleep 0.5
  end
end

# Add a bassline
live_loop :bassline do
  use_synth :fm
  play :G2, release: 0.5
  sleep 1
  play :D2, release: 0.5
  sleep 1
  play :E2, release: 0.5
  sleep 1
  play :C2, release: 0.5
  sleep 1
end
