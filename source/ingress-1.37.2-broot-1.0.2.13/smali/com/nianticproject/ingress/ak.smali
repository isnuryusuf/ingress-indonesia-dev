.class public final Lcom/nianticproject/ingress/ak;
.super Landroid/support/v4/app/p;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final d:[I


# instance fields
.field private e:[I

.field private f:[I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticproject/ingress/ui/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcom/nianticproject/ingress/common/b;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v2, [Lcom/nianticproject/ingress/shared/rpc/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/ak;->a:I

    .line 35
    new-array v0, v3, [Lcom/nianticproject/ingress/shared/rpc/s;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->c:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/ak;->b:I

    .line 36
    new-array v0, v3, [Lcom/nianticproject/ingress/shared/rpc/s;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->b:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/ak;->c:I

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/nianticproject/ingress/ak;->a:I

    aput v1, v0, v2

    sget v1, Lcom/nianticproject/ingress/ak;->b:I

    aput v1, v0, v3

    const/4 v1, 0x2

    sget v2, Lcom/nianticproject/ingress/ak;->c:I

    aput v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/ak;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/j;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/j;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ak;->g:Ljava/util/ArrayList;

    .line 54
    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/ak;->h:Lcom/nianticproject/ingress/common/b;

    .line 55
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/ak;->a(Z)V

    .line 56
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/ao;)V
    .locals 4
    .parameter

    .prologue
    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 175
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/ui/k;

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/ao;->a(Lcom/nianticproject/ingress/ui/k;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 184
    iget-object v2, p0, Lcom/nianticproject/ingress/ak;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_2
    return-void
.end method

.method private b(Lcom/nianticproject/ingress/ui/k;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/nianticproject/ingress/ak;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/ak;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ak;->b(I)I

    move-result v0

    .line 97
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ak;->i:Z

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/k;->a(IZ)Lcom/nianticproject/ingress/ui/k;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ak;->b(Lcom/nianticproject/ingress/ui/k;)V

    .line 99
    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/b;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    const-string/jumbo v0, "setChannel"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/nianticproject/ingress/ak;->h:Lcom/nianticproject/ingress/common/b;

    .line 139
    new-instance v0, Lcom/nianticproject/ingress/al;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/al;-><init>(Lcom/nianticproject/ingress/ak;Lcom/nianticproject/ingress/common/b;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ak;->a(Lcom/nianticproject/ingress/ao;)V

    .line 145
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ak;->d()V

    .line 146
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/ui/k;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string/jumbo v0, "maybeAddCommFragmentRef"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ak;->b(Lcom/nianticproject/ingress/ui/k;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nianticproject/ingress/ak;->e:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nianticproject/ingress/ak;->f:[I

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/nianticproject/ingress/ak;->e:[I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/nianticproject/ingress/ak;->f:[I

    goto :goto_0

    .line 60
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final b(I)I
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->h:Lcom/nianticproject/ingress/common/b;

    sget-object v1, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/ak;->d:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/nianticproject/ingress/ak;->a:I

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 159
    const-string/jumbo v0, "setActive"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ak;->i:Z

    if-eq v0, p1, :cond_0

    .line 161
    iput-boolean p1, p0, Lcom/nianticproject/ingress/ak;->i:Z

    .line 162
    new-instance v0, Lcom/nianticproject/ingress/an;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/an;-><init>(Lcom/nianticproject/ingress/ak;Z)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ak;->a(Lcom/nianticproject/ingress/ao;)V

    .line 169
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->h:Lcom/nianticproject/ingress/common/b;

    sget-object v1, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->f:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(I)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final d(I)I
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->h:Lcom/nianticproject/ingress/common/b;

    sget-object v1, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/ak;->f:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "scrollToBottom"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/nianticproject/ingress/am;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/am;-><init>(Lcom/nianticproject/ingress/ak;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ak;->a(Lcom/nianticproject/ingress/ao;)V

    .line 156
    return-void
.end method
