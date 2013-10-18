.class public final Lcom/nianticproject/ingress/common/ui/a/e;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public final act(F)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a/e;->a:Z

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/e;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 20
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a()V

    .line 22
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final restart()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/a/e;->a:Z

    .line 28
    return-void
.end method
