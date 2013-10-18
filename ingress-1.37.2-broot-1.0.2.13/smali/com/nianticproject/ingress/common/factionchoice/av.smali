.class final Lcom/nianticproject/ingress/common/factionchoice/av;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/at;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/at;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/av;->a:Lcom/nianticproject/ingress/common/factionchoice/at;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/av;->a:Lcom/nianticproject/ingress/common/factionchoice/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/at;->a(Lcom/nianticproject/ingress/common/factionchoice/at;)Lcom/nianticproject/ingress/common/factionchoice/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/factionchoice/az;->b()V

    .line 152
    return-void
.end method
