.class final Lcom/nianticproject/ingress/common/v/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/v/ai;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/v/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/v/j;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/m;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/m;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->c(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->c(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/x;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/x;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->d(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/aa;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/aa;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 90
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->e(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/ab;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/ab;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 96
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->f(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->f(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/ac;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/ac;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 104
    :cond_2
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->g(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->g(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/ad;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/ad;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 112
    :cond_3
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->h(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->h(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/ae;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/ae;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 120
    :cond_4
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->i(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->i(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/af;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/af;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 128
    :cond_5
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->j(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->j(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/ag;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/ag;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 137
    :cond_6
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->k(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/n;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/n;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 143
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->l(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/ak;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/g;->a:Lcom/nianticproject/ingress/common/c/g;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/v/ak;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/o;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/o;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 149
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->l(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/ak;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/g;->c:Lcom/nianticproject/ingress/common/c/g;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/v/ak;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/p;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/p;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 155
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->l(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/ak;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/g;->b:Lcom/nianticproject/ingress/common/c/g;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/v/ak;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/q;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/q;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 161
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->m(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/r;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/r;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 167
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->n(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/s;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/s;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 173
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->o(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/t;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/t;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 180
    new-instance v0, Lcom/nianticproject/ingress/common/v/u;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/v/u;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    .line 208
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->p(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/v/a;->a(Lcom/nianticproject/ingress/common/v/d;)V

    .line 209
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->q(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/v/a;->a(Lcom/nianticproject/ingress/common/v/d;)V

    .line 210
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->r(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/v/v;

    invoke-direct {v2, p0, p1}, Lcom/nianticproject/ingress/common/v/v;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 216
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->s(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/v/a;->a(Lcom/nianticproject/ingress/common/v/d;)V

    .line 217
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->t(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->t(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/w;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/w;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 225
    :cond_7
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->u(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->u(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/y;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/y;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 233
    :cond_8
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->v(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 234
    invoke-static {p1}, Lcom/nianticproject/ingress/common/v/j;->v(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/v/z;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/v/z;-><init>(Lcom/nianticproject/ingress/common/v/l;Lcom/nianticproject/ingress/common/v/j;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 252
    :cond_9
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->l(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/v/ak;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/c/h;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->d(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->c(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->c(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "Disable"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void

    .line 269
    :cond_1
    const-string/jumbo v0, "Enable"

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->a(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->g(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->g(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "ON"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void

    .line 289
    :cond_1
    const-string/jumbo v1, "OFF"

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->w(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->n(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "DYNAMIC"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 301
    return-void

    .line 300
    :cond_0
    const-string/jumbo v0, "STATIC"

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->x(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->x(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->o(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "ENABLED"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 306
    return-void

    .line 305
    :cond_0
    const-string/jumbo v0, "DISABLED"

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->r(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public final e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->p(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 311
    return-void
.end method

.method public final f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->p(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 316
    return-void
.end method

.method public final g(Z)V
    .locals 2
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->q(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 321
    return-void
.end method

.method public final h(Z)V
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->q(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 326
    return-void
.end method

.method public final i(Z)V
    .locals 2
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->q(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 332
    return-void
.end method

.method public final j(Z)V
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->q(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 337
    return-void
.end method

.method public final k(Z)V
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->t(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->t(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "Disable"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void

    .line 347
    :cond_1
    const-string/jumbo v0, "Enable"

    goto :goto_0
.end method

.method public final l(Z)V
    .locals 2
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->u(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->u(Lcom/nianticproject/ingress/common/v/j;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/v/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/v/aj;->a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "Resume"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void

    .line 355
    :cond_1
    const-string/jumbo v0, "Pause"

    goto :goto_0
.end method

.method public final m(Z)V
    .locals 3
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/l;->a:Lcom/nianticproject/ingress/common/v/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v/j;->s(Lcom/nianticproject/ingress/common/v/j;)Lcom/nianticproject/ingress/common/v/a;

    move-result-object v1

    const/4 v2, 0x7

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/nianticproject/ingress/common/v/a;->a(IZ)V

    .line 364
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
