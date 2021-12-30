import React from 'react'

export default function BottomSidebar({title}) {
    return (
        <div>
             <h5>{title}</h5>
                <hr />

                <div class=" my-3">
                    <a href="/blog/python" class=" " aria-current="true"> Python</a>
                </div>


                <div class=" my-3">
                    <a href="/blog/python-advance" class=" " aria-current="true"> Python Advance</a>
                </div>


                <div class=" my-3">
                    <a href="/blog/python-oops" class=" " aria-current="true"> Python OOPs</a>
                </div>


                <div class=" my-3">
                    <a href="/blog/projects-source-code" class=" " aria-current="true"> Projects Source Code</a>
                </div>


                <div class=" my-3">
                    <a href="/blog/cheatsheet" class=" " aria-current="true"> Cheatsheet</a>
                </div>


                <div class=" my-3">
                    <a href="/blog/jobs-and-internships" class=" " aria-current="true"> Jobs and Internships</a>
                </div>
        </div>
    )
}
