# HTTrack Docker Setup (HTTrack 도커 설정)

## Reference Site (참조 사이트)

- Official HTTrack Website: [https://www.httrack.com](https://www.httrack.com)
  HTTrack original source is available on the official HTTrack website.  
  HTTrack 원본 소스는 HTTrack 공식 웹사이트에서 가져왔습니다.

This project sets up HTTrack in a Docker container.  
이 프로젝트는 HTTrack을 도커 컨테이너에 설정합니다.

## How to Use HTTrack (HTTrack 사용 방법)

1. **Build the Docker Image (도커 이미지 빌드)**  
   Run the following command to build the Docker image:  
   다음 명령어를 실행하여 도커 이미지를 빌드하세요:
   ```bash
   docker-compose build
   ```

2. **Start the Container (컨테이너 시작)**  
   Start the container using:  
   다음 명령어로 컨테이너를 시작하세요:
   ```bash
   docker-compose up -d
   ```

3. **Access the Container (컨테이너 접속)**  
   Access the running container:  
   실행 중인 컨테이너에 접속하려면:
   ```bash
   docker exec -it ubuntu_container bash
   ```

4. **Run HTTrack (HTTrack 실행)**  
   Inside the container, use HTTrack to mirror a website:  
   컨테이너 내부에서 HTTrack을 사용하여 웹사이트를 미러링하세요:
   ```bash
   httrack "http://example.com" -O /path/to/output
   ```
   Replace `http://example.com` with the URL of the website you want to mirror and `/path/to/output` with the desired output directory.  
   `http://example.com`을 미러링할 웹사이트 URL로, `/path/to/output`을 원하는 출력 디렉토리로 바꾸세요.

5. **Stop the Container (컨테이너 중지)**  
   Stop the container when done:  
   작업이 끝나면 컨테이너를 중지하세요:
   ```bash
   docker-compose down
   ```

## HTTrack Command Usage (HTTrack 명령어 사용법)

HTTrack is a command-line tool to mirror websites. Below are some common commands:  
HTTrack은 웹사이트를 미러링하는 명령줄 도구입니다. 아래는 몇 가지 일반적인 명령어입니다:

1. **Basic Website Mirroring (기본 웹사이트 미러링)**  
   ```bash
   httrack "http://example.com" -O /path/to/output
   ```
   - `http://example.com`: The website URL to mirror.  
     미러링할 웹사이트 URL.
   - `/path/to/output`: The directory where the mirrored website will be saved.  
     미러링된 웹사이트가 저장될 디렉토리.

2. **Resume a Mirroring Process (미러링 작업 재개)**  
   If the mirroring process was interrupted, you can resume it:  
   미러링 작업이 중단된 경우 다음 명령어로 재개할 수 있습니다:
   ```bash
   httrack --continue
   ```

3. **Update an Existing Mirror (기존 미러 업데이트)**  
   To update a previously mirrored website:  
   이전에 미러링한 웹사이트를 업데이트하려면:
   ```bash
   httrack --update
   ```

4. **Help and Documentation (도움말 및 문서)**  
   For a full list of options and help:  
   옵션 및 도움말 전체 목록은 다음을 참조하세요:
   ```bash
   httrack --help
   ```
