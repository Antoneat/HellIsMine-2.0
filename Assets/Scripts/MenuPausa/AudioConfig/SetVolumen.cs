using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class SetVolumen : MonoBehaviour
{
    public AudioMixer musicMixer;

    private void Start()
    {
        
    }

    public void SetLevelMusic(float sliderValueMusic)
    {
        musicMixer.SetFloat("MusicVolumen", Mathf.Log10(sliderValueMusic) * 20);
    }
    
    public void SetLevelSfx(float sliderValueSfx)
    {
        musicMixer.SetFloat("SfxVolumen", Mathf.Log10(sliderValueSfx) * 20);
    }
}
