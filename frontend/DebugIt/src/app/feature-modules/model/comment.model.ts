export class Comment{
    id: number = 0;
    questionId: number = 0;
    description: string = '';
    userId: number = 0;
    postedOn: number = 0;
    editedOn: number | undefined;
    numOfVotes: number = 0;
    commentThreadId: number | undefined;
    userNameEmail: string = '';
}