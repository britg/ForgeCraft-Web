(function(){Crafty.audio.MAX_CHANNELS=1,Crafty.audio.add("swap","/sounds/swap_stone.mp3"),Crafty.audio.add("forge",["/sounds/forge.mp3","/sounds/forge.wav","/sounds/forge.ogg"]),Crafty.audio.add("slash",["/sounds/slash.mp3","/sounds/slash.wav","/sounds/slash.ogg"]),Crafty.audio.add("forge_bg","/sounds/forge_bg.mp3"),ForgeCraft.Audio.play=function(a,b){console.log("Sound settings are",ForgeCraft.Config.sound);if(b===-1){if(!ForgeCraft.Config.sound.music)return}else if(!ForgeCraft.Config.sound.effects)return;return Crafty.audio.play(a,b)},ForgeCraft.Audio.playMusic=function(){return ForgeCraft.Audio.play("forge_bg",-1)},ForgeCraft.Audio.update=function(){return ForgeCraft.Config.sound.music?ForgeCraft.Audio.playMusic():ForgeCraft.Audio.stop("forge_bg")},ForgeCraft.Audio.stop=function(a){var b,c,d,e,f,g;c=Crafty.audio._elems[a],d=c.length,g=[];for(e=0,f=c.length;e<f;e++)b=c[e],g.push(b.pause());return g}}).call(this)