# Kubernetes Features 이해 과정

| 과정명 | Kubernetes 핵심 기능 이해 과정 |
| --- | --- |
| 강사 소개 | https://www.notion.so/b03cc7b2dc3c4230bc6a8d3bbc11a135?pvs=21(seongmi.lee@weplat.site) |
| 강의 시간 | 32시간(8h -4day) |
| 강의 소개 | - Kubernetes는 컨테이너화 된 애플리케이션의 자동 디플로이, 스케일링 등을 제공하는 관리 시스템으로 오픈 소스입니다. 원래 구글에 의해 설계되었고 현재 linux foundation 산하의 CNCF에 의해 관리되고 있습니다. 
- 본 과정은 http://kubernets.io  홈페이지에서 소개하는 핵심 기능 10가지를 중심으로 쿠버네티스 이해부터 운영까지  Hands-on  중심으로 진행합니다. |
| 교육 목표 | •컨테이너 기반의 애플리케이션을   MSA 로 운영하기 위해 기반 기술인 쿠버네티스를 이해합니다.
•쿠버네티스 핵심 기능 10가지 중심으로 컨테이너  기반의 애플리케이션을 운영할 수 있는 역량을 키웁니다. |
| 강의 목차 | 1. 쿠버네티스 이해
• 클라우드네이티브 이해
• 컨테이너와 오케스트레이션
• 쿠버네티스 아키텍쳐 이해

2.  Pod 이해하기
• kubectl 명령어 사용
• Pod 동작
• 스케쥴링

3. 컨테이너 배포 및  스케일링
• Replication controller
• ReplicaSet
• Deployment & Rolling Update
• DaemonSet

4. Container 네트워크
• CNI(Container Network Interface) 이해
• 쿠버네티스 Service

5.  컨테이너 스토리지 운영
• 쿠버네티스 볼륨 관리
• Persistent volume & Persistent Volume Claim

6.  컨테이너 애플리케이션 운영
• Self-healing
• Horizontal Pod Autoscaler
• Secret & Configmap
• batch  처리를 위한  Job & Cronjob

7.  MSA 기반의 애플리케이션 배포
• LAB: 컨테이너 기반의 애플리케이션 배포 실습 |
| 학습 대상 | - Container 배포에 관심 있는 분
- DevOpS 개발자 및 운영자 |
- Kubernetes Features (kubernetes.io)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d54e8ebf-4caa-4c37-9273-b2e7a36fc524/Untitled.png)
    

### 강의 스케쥴

| day1 | day2 | day3 | day4 |
| --- | --- | --- | --- |
| 1.쿠버네티스 이해
• 클라우드네이티브이해
• 컨테이너의 이해
• 쿠버네티스 아키텍쳐 이해

2. Pod 이해하기
• kubectl 명령어 사용
• Pod 동작
• 스케쥴링 | 3. 컨테이너 배포 및 스케일링
• ReplicationController
• ReplicaSet
• Deployment & Rolling Update
• DaemonSet | 4. Container 네트워크
• CNI(Container Network Interface) 이해
• Kubernetes Service
• Service Type: Cluster IP, NodePort, LoadBalancer

5. 컨테이너 스토리지 운영
• 쿠버네티스볼륨관리
• Persistent volume &  Persistent Volume Claim | 6. 컨테이너 애플리케이션 운영
• Self-healing
• Resource Limits
• Horizontal Pod Autoscaler
• Secret & Configmap
• batch 처리를 위한 Job & Cronjob

7. MSA 기반의 애플리케이션 배포 |

### Kubernetes란?

쿠버네티스(Kubernetes, 쿠베르네테스, "K8s")는컨테이너화된애플리케이션의 자동배포, 스케일링등을제공하는관리시스템으로,오픈소스기반이다.원래구글에 의해설계되었고현재리눅스재단에의해관리되고있다. 목적은여러클러스터의 호스트간에애플리케이션컨테이너의배치, 스케일링, 운영을자동화하기위한 플랫폼을제공하기위함이다.도커를포함하여일련의컨테이너도구들과함께 동작한다.
출처: [https://ko.wikipedia.org/wiki/쿠버네티스](https://ko.wikipedia.org/wiki/%EC%BF%A0%EB%B2%84%EB%84%A4%ED%8B%B0%EC%8A%A4)

### Kubernetes 공식 홈페이지
- https://kubernetes.io/ko/