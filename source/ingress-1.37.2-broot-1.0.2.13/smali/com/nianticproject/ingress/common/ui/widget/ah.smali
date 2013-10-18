.class public final Lcom/nianticproject/ingress/common/ui/widget/ah;
.super Lcom/nianticproject/ingress/common/ui/widget/g;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nianticproject/ingress/common/h/l;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    const-string/jumbo v0, "%s"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ah;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const-string/jumbo v3, "%s"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/ah;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p2, v1}, Lcom/nianticproject/ingress/common/ui/widget/g;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->e:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->f:Z

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->g:J

    .line 56
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->c:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->d:Lcom/nianticproject/ingress/common/h/l;

    .line 58
    invoke-virtual {p0, p4}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p2, p5}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/nianticproject/ingress/common/ui/widget/ah;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ah;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ah;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ah;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/widget/ah;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ai;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ai;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->e:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "..."

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->d:Lcom/nianticproject/ingress/common/h/l;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/aj;

    const-string/jumbo v3, "NicknameScrollLabel.updateLabel"

    invoke-direct {v2, p0, v3}, Lcom/nianticproject/ingress/common/ui/widget/aj;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/util/List;Lcom/nianticproject/ingress/common/x/g;)V

    goto :goto_0
.end method

.method public final act(F)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    .line 122
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/g;->act(F)V

    .line 124
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->g:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->F()Lcom/nianticproject/ingress/common/ac;

    move-result-object v2

    .line 136
    iget-wide v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->g:J

    sub-long/2addr v0, v3

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/ac;->e()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/ac;->a(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->f:Z

    .line 140
    iput-wide v5, p0, Lcom/nianticproject/ingress/common/ui/widget/ah;->g:J

    goto :goto_0
.end method
