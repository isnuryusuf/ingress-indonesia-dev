.class public Lcom/nianticproject/ingress/common/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/c/c;

.field private final c:[Lcom/nianticproject/ingress/common/c/b;

.field private final d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/c/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ba;[Lcom/nianticproject/ingress/common/c/b;F)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/nianticproject/ingress/common/c/c;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/c/c;-><init>(Lcom/nianticproject/ingress/common/c/ba;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/a;->b:Lcom/nianticproject/ingress/common/c/c;

    .line 133
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/a;->c:[Lcom/nianticproject/ingress/common/c/b;

    .line 134
    iput p3, p0, Lcom/nianticproject/ingress/common/c/a;->d:F

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    .line 137
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/a;->a(J)V

    .line 138
    return-void
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    .line 164
    const-wide v0, 0x40a7700000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40b3880000000000L

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, p1

    long-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->g:F

    .line 166
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    .line 221
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    .line 210
    return-void
.end method

.method public final a(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 149
    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 150
    mul-float/2addr v0, p2

    .line 151
    iget v1, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    sub-float/2addr v0, v1

    .line 152
    iget v1, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float/2addr v0, p1

    const v2, 0x3e4ccccd

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    .line 153
    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/a;->b:Lcom/nianticproject/ingress/common/c/c;

    iget v1, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    iget v2, p0, Lcom/nianticproject/ingress/common/c/a;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/c;->a(F)V

    .line 155
    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->g:F

    const/high16 v1, 0x447a

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->g:F

    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->g:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->g:F

    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->g:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/a;->c:[Lcom/nianticproject/ingress/common/c/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/a;->c:[Lcom/nianticproject/ingress/common/c/b;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/b;->a(F)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/a;->a(J)V

    .line 156
    :cond_0
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->e:F

    .line 236
    iput v0, p0, Lcom/nianticproject/ingress/common/c/a;->f:F

    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/a;->b:Lcom/nianticproject/ingress/common/c/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/c;->a()V

    .line 238
    return-void
.end method
