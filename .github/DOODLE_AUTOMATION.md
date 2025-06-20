# Doodle Poll Automation

This GitHub Action automatically creates Doodle polls when the `schedule-meeting` tag is added to a GitHub Discussion.

## Features

- **Tag-triggered**: Activates only when the `schedule-meeting` tag is newly added to a discussion
- **Automatic poll creation**: Creates a Doodle poll using the discussion title and body
- **Configurable time slots**: Uses default time options or custom configuration from `.github/doodle-times.json`
- **Idempotent**: Prevents duplicate polls if the action runs multiple times
- **Discussion integration**: Posts a comment with the poll link back to the discussion

## Setup

### 1. Configure Secrets

Add the following secret to your repository settings:

- `DOODLE_API_TOKEN`: Your Doodle API token (required)

### 2. Configure Variables (Optional)

You can customize the trigger tag by setting this repository variable:

- `DOODLE_TRIGGER_TAG`: Custom tag name (default: `schedule-meeting`)

### 3. Time Options Configuration

Create `.github/doodle-times.json` to customize default time slots:

```json
{
  "timeOptions": [
    {
      "date": "{{TODAY_PLUS_1}}",
      "times": ["10:00", "14:00", "16:00"]
    },
    {
      "date": "{{TODAY_PLUS_2}}",
      "times": ["10:00", "14:00", "16:00"]
    },
    {
      "date": "{{TODAY_PLUS_3}}",
      "times": ["10:00", "14:00", "16:00"]
    }
  ],
  "timezone": "UTC"
}
```

## Usage

1. Create a discussion in your repository
2. Add the `schedule-meeting` tag (or your custom trigger tag)
3. The action will automatically:
   - Create a Doodle poll with the discussion title and description
   - Add time slots based on your configuration
   - Post a comment with the poll link

## Example

When you add the `schedule-meeting` tag to a discussion titled "Planning Meeting for Q2", the action will:

1. Create a Doodle poll titled "Planning Meeting for Q2"
2. Include the discussion body as the poll description
3. Add time slots for the next 3 days at 10:00, 14:00, and 16:00 UTC
4. Post a comment like:

> 📅 A Doodle poll has been created to coordinate this discussion: [Vote on a time](https://doodle.com/poll/abc123)
>
> *This poll was automatically created when the `schedule-meeting` tag was added to this discussion.*

## Troubleshooting

- **No poll created**: Check that the `DOODLE_API_TOKEN` secret is configured correctly
- **Permission errors**: Ensure the action has `discussions: write` permission
- **Time format issues**: Verify your time configuration follows the HH:MM format

## Workflow File

The automation is implemented in `.github/workflows/discussion-doodle-poll.yml`.