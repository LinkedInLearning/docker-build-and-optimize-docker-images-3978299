# Docker: Build and Optimize Docker Images
This is the repository for the LinkedIn Learning course Docker: Build and Optimize Docker Images. The full course is available from [LinkedIn Learning][lil-course-url].

![lil-thumbnail-url]

## Course Description

In this intermediate Docker course, author and Docker Captain Shelley Benhoff shows you how Docker’s layer structure and caching mechanism can dramatically speed up your builds and reduce image sizes. Learn to apply best practices for structuring Dockerfiles, incorporating multi-stage builds, and optimizing the build process for security and efficiency. By the end of this course, you will be able to confidently create lean, maintainable images that follow industry-recommended patterns.

_See the readme file in the main branch for updated instructions and information._
## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Instructor

Shelley Benhoff

Author | Docker Captain | Co-Owner at HoffsTech, LLC
                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/shelley-benhoff?u=104).


[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/docker-build-and-optimize-docker-images
[lil-thumbnail-url]: https://media.licdn.com/dms/image/v2/D560DAQHeTOTxk3-Unw/learning-public-crop_675_1200/B56ZiAb6GQG0Ag-/0/1754501456595?e=2147483647&v=beta&t=eZFlqo8UiAjlF9uIesvI4ibwp88MgTn1_A-FDfLsdOg

