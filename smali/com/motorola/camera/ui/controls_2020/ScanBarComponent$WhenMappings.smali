.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;
.super Ljava/lang/Object;
.source "ScanBarComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->values()[Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v3, 0x2

    aput v3, v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x3

    aput v4, v0, v1

    const/16 v5, 0x9

    const/4 v6, 0x4

    aput v6, v0, v5

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$detector$results$tidbit$actions$TidbitAction$Type$s$values()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v4

    aput v6, v0, v3

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
