.class final Lcom/nianticproject/ingress/common/playerprofile/an;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/al;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/al;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/an;->a:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/al;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/an;-><init>(Lcom/nianticproject/ingress/common/playerprofile/al;)V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/an;->a:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->a(Lcom/nianticproject/ingress/common/playerprofile/al;)Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v2

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/an;->a:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->a(Lcom/nianticproject/ingress/common/playerprofile/al;)Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->b()I

    move-result v4

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/an;->a:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->a(Lcom/nianticproject/ingress/common/playerprofile/al;)Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->d()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v3

    .line 54
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v6

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/an;->a:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/playerprofile/al;->b(Lcom/nianticproject/ingress/common/playerprofile/al;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/nianticproject/ingress/common/playerprofile/an;->a:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/playerprofile/al;->c(Lcom/nianticproject/ingress/common/playerprofile/al;)Lcom/nianticproject/ingress/common/j/av;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/l;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/ui/t;->b(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    .line 61
    return-void
.end method
