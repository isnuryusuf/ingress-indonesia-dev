.class final Lcom/nianticproject/ingress/common/missions/dy;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/ResetMissionDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/ResetMissionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dy;->a:Lcom/nianticproject/ingress/common/missions/ResetMissionDialog;

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
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dy;->a:Lcom/nianticproject/ingress/common/missions/ResetMissionDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog;->g()V

    .line 48
    return-void
.end method
