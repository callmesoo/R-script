


pip3 install SpeechRecognition pydub

import speech_recognition as sr



cd C:\Work\Projects\ffmpeg\bin\speech


# initialize the recognizer
r = sr.Recognizer()

# importing libraries 
import speech_recognition as sr 
import os 
from pydub import AudioSegment
from pydub.silence import split_on_silence

# create a speech recognition object
r = sr.Recognizer()

# a function that splits the audio file into chunks
# and applies speech recognition
def get_large_audio_transcription(path):
    """
    Splitting the large audio file into chunks
    and apply speech recognition on each of these chunks
    """
    # open the audio file using pydub
    sound = AudioSegment.from_wav(path)  
    # split audio sound where silence is 700 miliseconds or more and get chunks
    chunks = split_on_silence(sound,
        # experiment with this value for your target audio file
        min_silence_len = 500,
        # adjust this per requirement
        silence_thresh = sound.dBFS-14,
        # keep the silence for 1 second, adjustable as well
        keep_silence=500,
    )
    folder_name = "audio-chunks"
    # create a directory to store the audio chunks
    if not os.path.isdir(folder_name):
        os.mkdir(folder_name)
    whole_text = ""
    # process each chunk 
    for i, audio_chunk in enumerate(chunks, start=1):
        # export audio chunk and save it in
        # the `folder_name` directory.
        chunk_filename = os.path.join(folder_name, f"chunk{i}.wav")
        audio_chunk.export(chunk_filename, format="wav")
        # recognize the chunk
        with sr.AudioFile(chunk_filename) as source:
            audio_listened = r.record(source)
            # try converting it to text
            try:
                text = r.recognize_google(audio_listened)
            except sr.UnknownValueError as e:
                print("Error:", str(e))
            else:
                text = f"{text.capitalize()}. "
                print(chunk_filename, ":", text)
                whole_text += text
    # return the text for all chunks detected
    return whole_text
	
	
	path = "advent2.wav"
print("\nFull text:", get_large_audio_transcription(path))

cd C:\Work\Projects\ffmpeg\bin\



from pytube import YouTube


urlYouTube = "https://youtu.be/NHbusDAj3zE"
yt = YouTube(urlYouTube)


yt.streams.get_by_itag('251').download()

yt.streams.filter(only_audio=True).all()





yt.streams.get_by_itag('136').download()
yt.streams.get_by_itag('140').download()


yt.streams.get_by_itag('251').download()

yt.streams.get_by_itag('137').download()




from pytube3 import YouTube


urlYouTube = "https://www.youtube.com/watch?v=hw_EaRqniNI"
yt = YouTube(urlYouTube)




https://www.youtube.com/watch?v=uddcZqQjJ5k


https://youtu.be/uddcZqQjJ5k

yt.streams.all

yt.streams.filter(only_video=True).all()
yt.streams.filter(only_audio=True).all()


yt.streams.filter(file_extension='mp3')

yt.streams.get_by_itag('248').download()
yt.streams.get_by_itag('251').download()

yt.streams.filter(progressive=True, file_extension='mp4').order_by('resolution').desc().first()


yt.captions.all()

yt.captions.all()
caption = yt.captions.get_by_language_code('a.en')
print(caption.generate_srt_captions())


yt.captions.all()
caption = yt.captions.get_by_language_code('ko')
print(caption.generate_srt_captions())

cd C:\Work\Projects\ffmpeg\bin\
ffmpeg.exe -i video.webm -i audio.webm -c:v copy -c:a aac output.mp4


ffmpeg.exe -i BESTILL_A.mp4 -i BESTILL_V.mp4 -c:v copy -c:a aac BESTILL.mp4


ffmpeg.exe -i "The Phantom of The Opera - FULL STAGE SHOW  The Shows Must Go On - Stay Home WithMe.mp4" -i "The Phantom of The Opera - FULL STAGE SHOW  The Shows Must Go On - Stay Home WithMe_audio.mp4" -c:v copy -c:a aac output1.mp4

import urllib.request

url_link = 'https://www.actvid.com/watch-movie/watch-minari-full-66846.4002269'
urllib.request.urlretrieve(url_link, 'video_name.mp4') 


python -m pip install pytube



ffmpeg -i MOVA8207.avi -c:a copy -c:v vp9 -b:v 100K MOVA8207.mp4











ffmpeg -i MOVA8236.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8236.mp4
ffmpeg -i MOVA8237.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8237.mp4
ffmpeg -i MOVA8238.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8238.mp4
ffmpeg -i MOVA8239.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8239.mp4
ffmpeg -i MOVA8240.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8240.mp4
ffmpeg -i MOVA8241.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8241.mp4
ffmpeg -i MOVA8242.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8242.mp4
ffmpeg -i MOVA8243.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8243.mp4
ffmpeg -i MOVA8244.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8244.mp4
ffmpeg -i MOVA8245.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8245.mp4
ffmpeg -i MOVA8246.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8246.mp4
ffmpeg -i MOVA8247.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8247.mp4
ffmpeg -i MOVA8248.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8248.mp4
ffmpeg -i MOVA8249.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8249.mp4
ffmpeg -i MOVA8250.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8250.mp4
ffmpeg -i MOVA8251.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8251.mp4
ffmpeg -i MOVA8252.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8252.mp4
ffmpeg -i MOVA8253.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8253.mp4
ffmpeg -i MOVA8254.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8254.mp4
ffmpeg -i MOVA8255.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8255.mp4
ffmpeg -i MOVA8256.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8256.mp4
ffmpeg -i MOVA8257.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8257.mp4
ffmpeg -i MOVA8258.avi -s 1980x1080 -c:a aac -b:a 128k MOVA8258.mp4

