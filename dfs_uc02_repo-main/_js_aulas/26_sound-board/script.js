
const sounds = ['applause','boo','gasp','tada','victory','wrong']

sounds.forEach(sound =>{
    const bnt = document.createElement,('button')
    btn.classList.add('btn')

btn.innerText = sound

btn.addEventListener('click',  () => {

    document.getElementById(sound).onplay()
})

document.getElementById('button').appendChild(btn)
})

function stopSongs(sounds =>{
    const song = document.getElementById(sound)
    song.pause()
    song.currentTime=0
}){


}