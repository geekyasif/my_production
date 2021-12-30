import React from 'react'

export default function Sidebar(props) {
    return (
        <div>
            <div className="col-sm-12  col-md-12 py-4">
                {props.topSidebar}

               {props.bottomSidebar}

            </div>
        </div>
    )
}
