import React from 'react'
import BottomSidebar from '../../components/MainContainer/BottomSidebar'
import MainContainer from '../../components/MainContainer/MainContainer'
import MainContent from '../../components/MainContainer/MainContent'
import Sidebar from '../../components/MainContainer/Sidebar'
import TopSidebar from '../../components/MainContainer/TopSidebar'

export default function Blog() {
    return (
        <div>

            <MainContainer
                MainContent={<MainContent/>}
                Sidebar={<Sidebar topSidebar={<TopSidebar title="Latest Post"/>} bottomSidebar={<BottomSidebar title="Categories"/>}/>}
            />

        </div>
    )
}
