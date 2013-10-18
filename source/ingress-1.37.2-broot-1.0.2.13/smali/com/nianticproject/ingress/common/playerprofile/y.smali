.class final Lcom/nianticproject/ingress/common/playerprofile/y;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/y;->a:Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/playerprofile/ak;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 64
    return-void
.end method
