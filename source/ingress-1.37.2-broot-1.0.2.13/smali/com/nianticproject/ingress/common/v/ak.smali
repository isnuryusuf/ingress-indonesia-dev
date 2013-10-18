.class public final Lcom/nianticproject/ingress/common/v/ak;
.super Lcom/nianticproject/ingress/common/v/aj;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/f;

.field private b:Lcom/nianticproject/ingress/common/ui/widget/f;

.field private c:Lcom/nianticproject/ingress/common/ui/widget/f;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const-string/jumbo v0, "Sound"

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/v/aj;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/g;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    .locals 2
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/nianticproject/ingress/common/v/al;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/ak;->a:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 89
    :goto_0
    return-object v0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/ak;->b:Lcom/nianticproject/ingress/common/ui/widget/f;

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/ak;->c:Lcom/nianticproject/ingress/common/ui/widget/f;

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4140

    const/high16 v4, 0x3f00

    const/high16 v3, 0x40c0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/common/v/ak;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/v/ak;->row()Lcom/a/a/c;

    .line 36
    const-string/jumbo v0, "small-white"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 38
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Background"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/v/ak;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 42
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/v/ak;->a:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 43
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/ak;->a:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/v/ak;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 47
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/v/ak;->row()Lcom/a/a/c;

    .line 48
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Effects"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/v/ak;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 52
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/v/ak;->b:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 53
    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/ak;->b:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/v/ak;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 57
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/v/ak;->row()Lcom/a/a/c;

    .line 58
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Speech"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/v/ak;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 63
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/v/ak;->c:Lcom/nianticproject/ingress/common/ui/widget/f;

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/ak;->c:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/v/ak;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 69
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/v/aj;->a(Ljava/lang/String;)V

    return-void
.end method
