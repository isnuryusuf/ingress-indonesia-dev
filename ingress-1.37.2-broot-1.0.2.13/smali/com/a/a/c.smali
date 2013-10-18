.class public final Lcom/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field A:F

.field B:F

.field C:Z

.field D:I

.field E:I

.field F:I

.field G:F

.field H:F

.field I:F

.field J:F

.field private final K:Lcom/a/a/a;

.field a:Lcom/a/a/e;

.field b:Lcom/a/a/e;

.field c:Lcom/a/a/e;

.field d:Lcom/a/a/e;

.field e:Lcom/a/a/e;

.field f:Lcom/a/a/e;

.field g:Lcom/a/a/e;

.field h:Lcom/a/a/e;

.field i:Lcom/a/a/e;

.field j:Lcom/a/a/e;

.field k:Lcom/a/a/e;

.field l:Lcom/a/a/e;

.field m:Lcom/a/a/e;

.field n:Lcom/a/a/e;

.field o:Ljava/lang/Float;

.field p:Ljava/lang/Float;

.field q:Ljava/lang/Integer;

.field r:Ljava/lang/Integer;

.field s:Ljava/lang/Integer;

.field t:Ljava/lang/Boolean;

.field u:Ljava/lang/Integer;

.field v:Ljava/lang/Boolean;

.field w:Ljava/lang/Boolean;

.field x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field y:F

.field z:F


# direct methods
.method constructor <init>(Lcom/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/c;->F:I

    .line 60
    iput-object p1, p0, Lcom/a/a/c;->K:Lcom/a/a/a;

    .line 61
    return-void
.end method

.method static a(Lcom/a/a/a;)Lcom/a/a/c;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 798
    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/a;)V

    .line 799
    new-instance v1, Lcom/a/a/f;

    invoke-direct {v1}, Lcom/a/a/f;-><init>()V

    iput-object v1, v0, Lcom/a/a/c;->a:Lcom/a/a/e;

    .line 800
    new-instance v1, Lcom/a/a/g;

    invoke-direct {v1}, Lcom/a/a/g;-><init>()V

    iput-object v1, v0, Lcom/a/a/c;->b:Lcom/a/a/e;

    .line 801
    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    iput-object v1, v0, Lcom/a/a/c;->c:Lcom/a/a/e;

    .line 802
    new-instance v1, Lcom/a/a/i;

    invoke-direct {v1}, Lcom/a/a/i;-><init>()V

    iput-object v1, v0, Lcom/a/a/c;->d:Lcom/a/a/e;

    .line 803
    new-instance v1, Lcom/a/a/j;

    invoke-direct {v1}, Lcom/a/a/j;-><init>()V

    iput-object v1, v0, Lcom/a/a/c;->e:Lcom/a/a/e;

    .line 804
    new-instance v1, Lcom/a/a/k;

    invoke-direct {v1}, Lcom/a/a/k;-><init>()V

    iput-object v1, v0, Lcom/a/a/c;->f:Lcom/a/a/e;

    .line 805
    iput-object v2, v0, Lcom/a/a/c;->g:Lcom/a/a/e;

    .line 806
    iput-object v2, v0, Lcom/a/a/c;->h:Lcom/a/a/e;

    .line 807
    iput-object v2, v0, Lcom/a/a/c;->i:Lcom/a/a/e;

    .line 808
    iput-object v2, v0, Lcom/a/a/c;->j:Lcom/a/a/e;

    .line 809
    iput-object v2, v0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 810
    iput-object v2, v0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 811
    iput-object v2, v0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 812
    iput-object v2, v0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 813
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->o:Ljava/lang/Float;

    .line 814
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->p:Ljava/lang/Float;

    .line 815
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 816
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    .line 817
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    .line 818
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    .line 819
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    .line 820
    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 152
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->b:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->e:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->f:Lcom/a/a/e;

    .line 153
    return-object p0
.end method

.method public final a(FF)Lcom/a/a/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    new-instance v1, Lcom/a/a/o;

    invoke-direct {v1, p2}, Lcom/a/a/o;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    .line 159
    return-object p0
.end method

.method public final a(FFFF)Lcom/a/a/c;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 458
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p2}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 459
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p3}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 460
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p4}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 461
    return-object p0
.end method

.method public final a(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/a/a/c;->a:Lcom/a/a/e;

    .line 165
    iput-object p1, p0, Lcom/a/a/c;->c:Lcom/a/a/e;

    .line 166
    iput-object p1, p0, Lcom/a/a/c;->e:Lcom/a/a/e;

    .line 167
    return-object p0
.end method

.method public final a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/a/a/c;->a:Lcom/a/a/e;

    .line 142
    iput-object p2, p0, Lcom/a/a/c;->b:Lcom/a/a/e;

    .line 143
    iput-object p1, p0, Lcom/a/a/c;->c:Lcom/a/a/e;

    .line 144
    iput-object p2, p0, Lcom/a/a/c;->d:Lcom/a/a/e;

    .line 145
    iput-object p1, p0, Lcom/a/a/c;->e:Lcom/a/a/e;

    .line 146
    iput-object p2, p0, Lcom/a/a/c;->f:Lcom/a/a/e;

    .line 147
    return-object p0
.end method

.method public final a(Ljava/lang/Float;Ljava/lang/Float;)Lcom/a/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    .line 505
    iput-object p2, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    .line 506
    return-object p0
.end method

.method public final a(Ljava/lang/Integer;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 527
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/a/a/c;"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "widget cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->K:Lcom/a/a/a;

    iget-object v0, v0, Lcom/a/a/a;->toolkit:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/c;->K:Lcom/a/a/a;

    invoke-virtual {v0, v1, p0, p1}, Lcom/a/a/d;->setWidget(Lcom/a/a/a;Lcom/a/a/c;Ljava/lang/Object;)V

    .line 120
    return-object p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/a/a/c;->x:Ljava/lang/Object;

    return-object v0
.end method

.method final a(Lcom/a/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p1, Lcom/a/a/c;->a:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/e;

    .line 65
    iget-object v0, p1, Lcom/a/a/c;->b:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->b:Lcom/a/a/e;

    .line 66
    iget-object v0, p1, Lcom/a/a/c;->c:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/e;

    .line 67
    iget-object v0, p1, Lcom/a/a/c;->d:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/e;

    .line 68
    iget-object v0, p1, Lcom/a/a/c;->e:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->e:Lcom/a/a/e;

    .line 69
    iget-object v0, p1, Lcom/a/a/c;->f:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->f:Lcom/a/a/e;

    .line 70
    iget-object v0, p1, Lcom/a/a/c;->g:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/e;

    .line 71
    iget-object v0, p1, Lcom/a/a/c;->h:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->h:Lcom/a/a/e;

    .line 72
    iget-object v0, p1, Lcom/a/a/c;->i:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->i:Lcom/a/a/e;

    .line 73
    iget-object v0, p1, Lcom/a/a/c;->j:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->j:Lcom/a/a/e;

    .line 74
    iget-object v0, p1, Lcom/a/a/c;->k:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 75
    iget-object v0, p1, Lcom/a/a/c;->l:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 76
    iget-object v0, p1, Lcom/a/a/c;->m:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 77
    iget-object v0, p1, Lcom/a/a/c;->n:Lcom/a/a/e;

    iput-object v0, p0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 78
    iget-object v0, p1, Lcom/a/a/c;->o:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    .line 79
    iget-object v0, p1, Lcom/a/a/c;->p:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    .line 80
    iget-object v0, p1, Lcom/a/a/c;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 81
    iget-object v0, p1, Lcom/a/a/c;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    .line 82
    iget-object v0, p1, Lcom/a/a/c;->s:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p1, Lcom/a/a/c;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    .line 85
    iget-object v0, p1, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    .line 86
    iget-object v0, p1, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public final b()Lcom/a/a/c;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/a/a/o;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/a/a/o;-><init>(F)V

    .line 374
    iput-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/e;

    .line 375
    iput-object v0, p0, Lcom/a/a/c;->h:Lcom/a/a/e;

    .line 376
    iput-object v0, p0, Lcom/a/a/c;->i:Lcom/a/a/e;

    .line 377
    iput-object v0, p0, Lcom/a/a/c;->j:Lcom/a/a/e;

    .line 378
    return-object p0
.end method

.method public final b(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    .line 173
    return-object p0
.end method

.method public final b(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/a/a/c;->b:Lcom/a/a/e;

    .line 179
    iput-object p1, p0, Lcom/a/a/c;->d:Lcom/a/a/e;

    .line 180
    iput-object p1, p0, Lcom/a/a/c;->f:Lcom/a/a/e;

    .line 181
    return-object p0
.end method

.method public final b(Ljava/lang/Integer;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    .line 629
    return-object p0
.end method

.method public final c()Lcom/a/a/c;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Lcom/a/a/o;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/e;

    .line 391
    return-object p0
.end method

.method public final c(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 186
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    .line 187
    return-object p0
.end method

.method public final c(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/a/a/c;->c:Lcom/a/a/e;

    .line 254
    return-object p0
.end method

.method public final d()Lcom/a/a/c;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/a/a/o;

    const/high16 v1, 0x4120

    invoke-direct {v0, v1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->h:Lcom/a/a/e;

    .line 396
    return-object p0
.end method

.method public final d(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 277
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/e;

    .line 278
    return-object p0
.end method

.method public final d(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 412
    iput-object p1, p0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 413
    iput-object p1, p0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 414
    iput-object p1, p0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 415
    return-object p0
.end method

.method public final e()Lcom/a/a/c;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/a/a/o;

    const/high16 v1, 0x4120

    invoke-direct {v0, v1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->j:Lcom/a/a/e;

    .line 406
    return-object p0
.end method

.method public final e(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 282
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/e;

    .line 283
    return-object p0
.end method

.method public final e(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 428
    return-object p0
.end method

.method public final f()Lcom/a/a/c;
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 486
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    .line 487
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    .line 488
    return-object p0
.end method

.method public final f(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 325
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->e:Lcom/a/a/e;

    .line 326
    return-object p0
.end method

.method public final f(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 433
    return-object p0
.end method

.method public final g()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 493
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    .line 494
    return-object p0
.end method

.method public final g(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 448
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    .line 449
    iput-object v0, p0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 450
    iput-object v0, p0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 451
    iput-object v0, p0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 452
    iput-object v0, p0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 453
    return-object p0
.end method

.method public final g(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 438
    return-object p0
.end method

.method public final h()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 499
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    .line 500
    return-object p0
.end method

.method public final h(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 465
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->k:Lcom/a/a/e;

    .line 466
    return-object p0
.end method

.method public final h(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 443
    return-object p0
.end method

.method public final i()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 533
    return-object p0
.end method

.method public final i(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 470
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->l:Lcom/a/a/e;

    .line 471
    return-object p0
.end method

.method public final j()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 544
    :goto_0
    return-object p0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 542
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final j(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 475
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->m:Lcom/a/a/e;

    .line 476
    return-object p0
.end method

.method public final k()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 550
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 555
    :goto_0
    return-object p0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 553
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final k(F)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 480
    new-instance v0, Lcom/a/a/o;

    invoke-direct {v0, p1}, Lcom/a/a/o;-><init>(F)V

    iput-object v0, p0, Lcom/a/a/c;->n:Lcom/a/a/e;

    .line 481
    return-object p0
.end method

.method public final l()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 566
    :goto_0
    return-object p0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 564
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final m()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 572
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 577
    :goto_0
    return-object p0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    .line 575
    iget-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final n()Lcom/a/a/c;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    .line 583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    .line 584
    return-object p0
.end method

.method public final o()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    .line 590
    return-object p0
.end method

.method public final p()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    .line 596
    return-object p0
.end method

.method public final q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 624
    iget-object v1, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Lcom/a/a/c;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 634
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    .line 635
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    .line 636
    return-object p0
.end method

.method public final s()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    .line 642
    return-object p0
.end method

.method public final t()F
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/a/a/c;->y:F

    return v0
.end method

.method public final u()F
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/a/a/c;->z:F

    return v0
.end method

.method public final v()F
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/a/a/c;->A:F

    return v0
.end method

.method public final w()F
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/a/a/c;->B:F

    return v0
.end method

.method public final x()Lcom/a/a/a;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/a/a/c;->K:Lcom/a/a/a;

    return-object v0
.end method
