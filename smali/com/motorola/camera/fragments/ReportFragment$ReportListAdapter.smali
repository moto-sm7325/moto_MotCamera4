.class public Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReportListAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/content/Context;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    const/4 v2, 0x0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V

    sget p1, Lcom/motorola/camera/fragments/ReportFragment;->$r8$clinit:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->onGroupCollapsed(I)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
