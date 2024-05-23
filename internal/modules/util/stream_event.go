package util

import (
	"bufio"
	"context"
	"io"
	"time"

	"github.com/gogf/gf/v2/os/glog"
)

type EventReader struct {
	Reader  io.ReadCloser // Required for Closing
	Scanner *bufio.Scanner
}

func NewEventReader(r io.ReadCloser) *EventReader {
	return &EventReader{Reader: r, Scanner: bufio.NewScanner(r)}
}

func (er *EventReader) Read() string {
	for er.Scanner.Scan() { // Scan while no error
		line := er.Scanner.Text() // Get the line & interpret the event stream:
		time.Sleep(50 * time.Millisecond)
		glog.Debug(context.Background(), "line: ", line)
		if line == "" || line[0] == ':' { // If the line is blank or is a comment, skip it
			continue
		}
		return line
	}

	scannerErr := er.Scanner.Err()

	if scannerErr == nil {
		return ""
	}

	return "[DONE]"
}

// Close closes the EventReader and any applicable inner stream state.
func (er *EventReader) Close() error {
	return er.Reader.Close()
}
