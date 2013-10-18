.class final Lcom/nianticproject/ingress/common/factionchoice/am;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/al;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/al;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/am;->a:Lcom/nianticproject/ingress/common/factionchoice/al;

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
    .line 279
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/am;->a:Lcom/nianticproject/ingress/common/factionchoice/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/factionchoice/al;->g()V

    .line 280
    return-void
.end method
