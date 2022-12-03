.class public final Landroidx/work/WorkQuery;
.super Ljava/lang/Object;
.source "WorkQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkQuery$Builder;
    }
.end annotation


# instance fields
.field public final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public final mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo$State;",
            ">;"
        }
    .end annotation
.end field

.field public final mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUniqueWorkNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/work/WorkQuery$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/util/List;

    .line 3
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/util/List;

    .line 4
    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/util/List;

    .line 5
    iget-object p1, p1, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/util/List;

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/util/List;

    return-void
.end method
