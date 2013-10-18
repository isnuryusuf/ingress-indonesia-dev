.class final Lcom/nianticproject/ingress/common/playerprofile/b;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/d;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/nianticproject/ingress/common/playerprofile/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/a;Lcom/nianticproject/ingress/common/ui/widget/d;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/b;->c:Lcom/nianticproject/ingress/common/playerprofile/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/b;->a:Lcom/nianticproject/ingress/common/ui/widget/d;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/playerprofile/b;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/b;->c:Lcom/nianticproject/ingress/common/playerprofile/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/b;->a:Lcom/nianticproject/ingress/common/ui/widget/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/b;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Lcom/nianticproject/ingress/common/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V

    .line 147
    return-void
.end method
