const Comments = lazy(() => import("../components/comments/Comments"));

const comments = [
  {
    path: "/comments",
    name: "Comments",
    element: Comments,
    roles: ["SysAdmin", "OrgAdmin"],
    exact: true,
    isAnonymous: false,
  },
];
