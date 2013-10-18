.class public final Landroid/support/v4/app/ag;
.super Landroid/support/v4/app/am;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 716
    invoke-direct {p0}, Landroid/support/v4/app/am;-><init>()V

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ag;->a:Ljava/util/ArrayList;

    .line 717
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag;
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;

    .line 729
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag;
    .locals 1
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    return-object p0
.end method
