.class public Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;
    }
.end annotation


# instance fields
.field public final layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

.field public mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

.field public mViewId:I

.field public final motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

.field public final propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

.field public final transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 3
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 4
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 4
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 5
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 6
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 7
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 8
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 9
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 10
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 12
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 13
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 14
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 15
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 16
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 20
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 21
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 22
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 23
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 24
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 25
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 26
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 27
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 28
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 29
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 30
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 31
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 32
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 33
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 34
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 35
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 36
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 37
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 38
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 39
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 40
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 41
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 42
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 43
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 44
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 45
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 46
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 47
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 48
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 49
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 50
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 51
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 52
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 54
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    .line 55
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 56
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 57
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 4
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 5
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 6
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 7
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 8
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 9
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 10
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 11
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 12
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 13
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 14
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 15
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 16
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 17
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 18
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 19
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 20
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 21
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 22
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 23
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 24
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 25
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 26
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 27
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 28
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 29
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 30
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 31
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 32
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 33
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 34
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 35
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 36
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 37
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 38
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 39
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 40
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 41
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 42
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 43
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 44
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 45
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 46
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 47
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 48
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 49
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 50
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 51
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 52
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 53
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 54
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 55
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 56
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 57
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 58
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 59
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 60
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 61
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 62
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 63
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 64
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v3, :cond_0

    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 65
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 66
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 67
    :goto_0
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 68
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 69
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 70
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 71
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 72
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 74
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 75
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 76
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 77
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 78
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 79
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 80
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPolarRelativeTo:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPolarRelativeTo:I

    .line 81
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 83
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 84
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 85
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 86
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 87
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 89
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 90
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 91
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 92
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 93
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 94
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 95
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 96
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 97
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 98
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 99
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 100
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 101
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 102
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 103
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    iput-object p0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    return-object v0
.end method

.method public final fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "param"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 3
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 4
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 5
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 6
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 7
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 8
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 9
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 10
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 11
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 12
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 13
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 14
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 15
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 16
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 17
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 18
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 19
    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 20
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 21
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 22
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 23
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 24
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 25
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 26
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 27
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 28
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 29
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 30
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 31
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 32
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 33
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 34
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 35
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 36
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 37
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 38
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 39
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 40
    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 41
    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 42
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 43
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 44
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 45
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 46
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 47
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 48
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 49
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 50
    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 51
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 52
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 53
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 54
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 55
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 56
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 57
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 58
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 59
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 60
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    return-void
.end method

.method public final fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "param"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 4
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 5
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 6
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 7
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 8
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 9
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 10
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 11
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 12
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 13
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 14
    iget-boolean p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    return-void
.end method
