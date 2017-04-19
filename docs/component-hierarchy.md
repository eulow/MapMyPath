## Component Hierarchy


**NavigationContainer**
- AuthFormContainer
  + AuthForm

- HomePageContainer
  + ActivityFeedContainer
    - ActivityIndexContainer
      + ActivityIndexItem
        - RouteDetail
          + Comment
  + UserContainer

  + DashboardContainer
    - RoutesSummary

  + UserContainer        

  + RoutesContainer
    - RoutesIndexContainer
      - RoutesIndexItems
    - NewRouteRouteForm

- FriendsContainer
  + FriendsIndexContainer
    - FriendsIndexItem
    - PendingFriendsIndex
    - PendingFriendsIndexItem
  + FindFriendsSearchIndex
    - FindFriendsIndexItem



## Routes

# Routes
|Path                   |	Component |
| --------------------- | ------------- |
| /signup               | AuthFormContainer |
| /login                | AuthFormContainer |
| /homepage/routes/     | RoutesIndexContainer |
| /homepage/routes/new  | NewRoutesForm |
| /homepage/routes/:id  | RouteShowContainer |
| /homepage/dashboard/  | RoutesSummary |
| /homepage/activity    | ActivityFeedContainer |
| /friends              | FriendsContainer |
| /friends/my-friends   | FriendsIndexContainer |
| /friends/find-friends | FindFriendsContainer |
