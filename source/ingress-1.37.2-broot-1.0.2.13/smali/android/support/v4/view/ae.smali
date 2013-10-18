.class public final Landroid/support/v4/view/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0}, Landroid/support/v4/view/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/ae;->a:Landroid/support/v4/view/ah;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/support/v4/view/af;

    invoke-direct {v0}, Landroid/support/v4/view/af;-><init>()V

    sput-object v0, Landroid/support/v4/view/ae;->a:Landroid/support/v4/view/ah;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/ae;->a:Landroid/support/v4/view/ah;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ah;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
