using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;
using UnityEngine.SceneManagement;

public class Cinematica : MonoBehaviour
{
    private VideoPlayer _videoPlayer;
    private bool _hasSkipped = false;

    void Awake()
    {
        _videoPlayer = GetComponent<VideoPlayer>();
      //  _videoPlayer.loopPointReached += OnMovieFinished; // loopPointReached is the event for the end of the video
    }

    void Start()
    {
        //StartCoroutine("VideoISplaying");
    }

    // Update is called once per frame
    void Update()
    {
        if (!_hasSkipped && (Input.anyKey||Input.GetMouseButtonDown(0)))
        {
            _hasSkipped = true;
            SceneManager.LoadScene(1);
        }

        if ((_videoPlayer.frame) > 0 && (_videoPlayer.isPlaying == false))
        {
            Debug.Log("Done Playing");
            SceneManager.LoadScene(1);
        }
    }

    void OnMovieFinished(VideoPlayer player)
    {
        Debug.Log("Event for movie end called");
        player.Stop();
    }
}
