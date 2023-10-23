# rCore-Tutorial-Code-2023A

### Code
- [Soure Code of labs for 2023A](https://github.com/LearningOS/rCore-Tutorial-Code-2023A)
### Documents

- Concise Manual: [rCore-Tutorial-Guide-2023A](https://LearningOS.github.io/rCore-Tutorial-Guide-2023A/)

- Detail Book [rCore-Tutorial-Book-v3](https://rcore-os.github.io/rCore-Tutorial-Book-v3/)


### OS API docs of rCore Tutorial Code 2023A
- [OS API docs of ch1](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch1/os/index.html)
  AND [OS API docs of ch2](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch2/os/index.html)
- [OS API docs of ch3](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch3/os/index.html)
  AND [OS API docs of ch4](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch4/os/index.html)
- [OS API docs of ch5](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch5/os/index.html)
  AND [OS API docs of ch6](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch6/os/index.html)
- [OS API docs of ch7](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch7/os/index.html)
  AND [OS API docs of ch8](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch8/os/index.html)
- [OS API docs of ch9](https://learningos.github.io/rCore-Tutorial-Code-2023A/ch9/os/index.html)

### Related Resources
- [Learning Resource](https://github.com/LearningOS/rust-based-os-comp2022/blob/main/relatedinfo.md)


### Build & Run

```bash
# setup build&run environment first
git clone https://github.com/LearningOS/rCore-Tutorial-Code-2023A.git
cd rCore-Tutorial-Code-*2023A
git clone https://github.com/LearningOS/rCore-Tutorial-Test-2023A.git user
cd os
git checkout ch$ID
# run OS in ch$ID
make run
```
Notice: $ID is from [1-9]

### Grading

```bash
# setup build&run environment first
git clone https://github.com/LearningOS/rCore-Tutorial-Code-2023A.git
cd rCore-Tutorial-Code-2023A
rm -rf ci-user
git clone https://github.com/LearningOS/rCore-Tutorial-Checker-2023A.git ci-user
git clone https://github.com/LearningOS/rCore-Tutorial-Test-2023A.git ci-user/user
git checkout ch$ID
# check&grade OS in ch$ID with more tests
cd ci-user && make test CHAPTER=$ID
```
Notice: $ID is from [3,4,5,6,8]