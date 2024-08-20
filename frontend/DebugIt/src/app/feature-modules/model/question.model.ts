export class Question{
    id: number = 0;
    title: string = '';
    description: string = '';
    postedOn: number = 0;
    editedOn: number | undefined;
    userId: number = 0;
    numOfVotes: number = 0;
    tags: Array<string> = [];
    numOfComments: number = 0;
}