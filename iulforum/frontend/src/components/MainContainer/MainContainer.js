import React from 'react'

export default function MainContainer(props) {
    return (
        <div className="container">
            <div className='row'>
                    <div className='col-sm-12 col-lg-9  border-end  py-4'>
                        {props.MainContent}
                    </div>

                    <div className='col-lg-3  col-sm-12 py-4'>
                        {props.Sidebar}
                    </div>
            </div>
        </div>
    )
}
