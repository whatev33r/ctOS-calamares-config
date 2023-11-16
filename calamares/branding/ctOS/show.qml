/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */
 
import QtQuick 2.0;
import calamares.slideshow 1.0;
 
Presentation
{
    id: presentation
 
    Slide {
        // ctOS loading gif
        anchors.fill: parent
        anchors.verticalCenterOffset: 0
 
        AnimatedImage { 
            id: animation
            source: "loading.gif" 
            width: parent.width; height: parent.height
            fillMode: AnimatedImage.PreserveAspectCrop
            anchors.centerIn: parent
        }
    }
 
    function onActivate() {
        console.log("QML Component (ctOS gif) activated");
        // presentation.currentSlide = 0;
    }
 
    function onLeave() {
        console.log("QML Component (ctOS gif) deactivated");
    }
 
}
 
