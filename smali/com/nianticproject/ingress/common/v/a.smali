.class public final Lcom/nianticproject/ingress/common/v/a;
.super Lcom/nianticproject/ingress/common/v/aj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nianticproject/ingress/common/v/d;


# direct methods
.method public varargs constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;[Lcom/nianticproject/ingress/common/v/c;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/v/aj;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/v/a;->a:Ljava/util/HashMap;

    .line 116
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 117
    invoke-direct {p0, p1, p3}, Lcom/nianticproject/ingress/common/v/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Lcom/nianticproject/ingress/common/v/c;)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Lcom/nianticproject/ingress/common/v/c;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p2, v1

    .line 126
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    iget-object v0, v4, Lcom/nianticproject/ingress/common/v/c;->c:Ljava/lang/String;

    invoke-direct {v5, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 127
    iget-boolean v0, v4, Lcom/nianticproject/ingress/common/v/c;->d:Z

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setChecked(Z)V

    .line 128
    new-instance v0, Lcom/nianticproject/ingress/common/v/b;

    invoke-direct {v0, p0, v4, v5}, Lcom/nianticproject/ingress/common/v/b;-><init>(Lcom/nianticproject/ingress/common/v/a;Lcom/nianticproject/ingress/common/v/c;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 135
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 136
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getCells()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    .line 137
    invoke-virtual {p0, v5}, Lcom/nianticproject/ingress/common/v/a;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const v6, 0x3f59999a

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/a/a/c;->a(Ljava/lang/Float;Ljava/lang/Float;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    const/high16 v6, 0x4100

    invoke-virtual {v0, v6}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/a;->a:Ljava/util/HashMap;

    iget v4, v4, Lcom/nianticproject/ingress/common/v/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/v/a;->row()Lcom/a/a/c;

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/v/a;Lcom/nianticproject/ingress/common/v/c;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nianticproject/ingress/common/v/c;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/a;->b:Lcom/nianticproject/ingress/common/v/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/a;->b:Lcom/nianticproject/ingress/common/v/d;

    iget v1, p1, Lcom/nianticproject/ingress/common/v/c;->a:I

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked()Z

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/d;->a(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/v/c;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    .line 168
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/common/v/a;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/v/a;->row()Lcom/a/a/c;

    .line 154
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/v/d;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/a;->b:Lcom/nianticproject/ingress/common/v/d;

    .line 122
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
