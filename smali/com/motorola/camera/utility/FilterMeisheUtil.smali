.class public final Lcom/motorola/camera/utility/FilterMeisheUtil;
.super Ljava/lang/Object;
.source "FilterMeisheUtil.kt"


# static fields
.field public static final filterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/FilterMeisheUtil;->filterMap:Ljava/util/Map;

    return-void
.end method
