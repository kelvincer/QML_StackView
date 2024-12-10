import QtQuick
import QtQuick.Controls

ApplicationWindow {
    //title: currentItem.title
    width: 640
    height: 480
    visible: true

    StackView {
        id: stackView
        initialItem: mainPage
        anchors.fill: parent
        onCurrentItemChanged: {
            title = currentItem.title;
        }
    }

    Component {
        id: mainPage

        Page {
            title: qsTr("Main Page")

            Column {

                Button {
                    text: "Push Page 1"
                    onClicked: stackView.push(page1)
                }

                Button {
                    text: "Push Page 2"
                    onClicked: stackView.push(page2)
                }
            }
        }
    }

    Component {
        id: page1

        Page {
            title: "Page 1"

            Button {
                text: "Pop"
                onClicked: stackView.pop()
            }
        }
    }

    Component {
        id: page2

        Page {
            title: qsTr("Page 2")

            Button {
                text: "Pop"
                onClicked: stackView.pop()
            }
        }
    }
}
