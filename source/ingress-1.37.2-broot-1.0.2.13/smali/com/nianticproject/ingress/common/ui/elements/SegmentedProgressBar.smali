.class public final Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

.field private final c:Lcom/nianticproject/ingress/common/ui/elements/bn;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;F)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    const-string/jumbo v0, "SegmentedProgressBar"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 53
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 54
    cmpl-float v0, p2, v3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 56
    iput v4, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a:I

    .line 57
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/bn;

    invoke-direct {v0, p0, v2}, Lcom/nianticproject/ingress/common/ui/elements/bn;-><init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c:Lcom/nianticproject/ingress/common/ui/elements/bn;

    .line 59
    iput v3, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->e:F

    .line 60
    iput v3, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->d:F

    .line 62
    iget v0, p1, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->heightDp:F

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    .line 63
    :goto_2
    if-ge v2, v4, :cond_2

    .line 64
    new-instance v1, Lcom/nianticproject/ingress/common/ui/elements/bm;

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/ui/elements/bm;-><init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;I)V

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v1, v2

    .line 54
    goto :goto_1

    .line 70
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->e:F

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->e:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->d:F

    return p1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->d:F

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a:I

    return v0
.end method

.method public final act(F)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c:Lcom/nianticproject/ingress/common/ui/elements/bn;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/bn;->b(F)V

    .line 76
    return-void
.end method

.method public final b()Lcom/nianticproject/ingress/common/ui/elements/bn;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c:Lcom/nianticproject/ingress/common/ui/elements/bn;

    return-object v0
.end method
