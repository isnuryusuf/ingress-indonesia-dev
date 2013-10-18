.class public abstract Lcom/google/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/ao",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/a/a/f;

.field public static final b:Lcom/google/a/a/f;

.field public static final c:Lcom/google/a/a/f;

.field public static final d:Lcom/google/a/a/f;

.field public static final e:Lcom/google/a/a/f;

.field public static final f:Lcom/google/a/a/f;

.field public static final g:Lcom/google/a/a/f;

.field public static final h:Lcom/google/a/a/f;

.field public static final i:Lcom/google/a/a/f;

.field public static final j:Lcom/google/a/a/f;

.field public static final k:Lcom/google/a/a/f;

.field public static final l:Lcom/google/a/a/f;

.field public static final m:Lcom/google/a/a/f;

.field public static final o:Lcom/google/a/a/f;

.field private static final p:Ljava/lang/String;


# instance fields
.field final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x7f

    const/16 v5, 0x1f

    const/4 v1, 0x0

    .line 66
    new-instance v0, Lcom/google/a/a/g;

    invoke-direct {v0}, Lcom/google/a/a/g;-><init>()V

    sput-object v0, Lcom/google/a/a/f;->a:Lcom/google/a/a/f;

    .line 99
    const-string/jumbo v0, "CharMatcher.ASCII"

    invoke-static {v1, v6, v0}, Lcom/google/a/a/f;->a(CCLjava/lang/String;)Lcom/google/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/f;->b:Lcom/google/a/a/f;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 138
    :goto_0
    if-ge v0, v5, :cond_0

    .line 139
    const-string/jumbo v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x9

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/f;->p:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/google/a/a/v;

    const-string/jumbo v2, "CharMatcher.DIGIT"

    const-string/jumbo v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcom/google/a/a/f;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/a/a/v;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/a/a/f;->c:Lcom/google/a/a/f;

    .line 155
    new-instance v0, Lcom/google/a/a/l;

    const-string/jumbo v2, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v2}, Lcom/google/a/a/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->d:Lcom/google/a/a/f;

    .line 166
    new-instance v0, Lcom/google/a/a/m;

    const-string/jumbo v2, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v2}, Lcom/google/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->e:Lcom/google/a/a/f;

    .line 176
    new-instance v0, Lcom/google/a/a/n;

    const-string/jumbo v2, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v2}, Lcom/google/a/a/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->f:Lcom/google/a/a/f;

    .line 187
    new-instance v0, Lcom/google/a/a/o;

    const-string/jumbo v2, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v2}, Lcom/google/a/a/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->g:Lcom/google/a/a/f;

    .line 198
    new-instance v0, Lcom/google/a/a/p;

    const-string/jumbo v2, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v2}, Lcom/google/a/a/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->h:Lcom/google/a/a/f;

    .line 209
    invoke-static {v1, v5}, Lcom/google/a/a/f;->a(CC)Lcom/google/a/a/f;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-static {v6, v1}, Lcom/google/a/a/f;->a(CC)Lcom/google/a/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/f;->a(Lcom/google/a/a/f;)Lcom/google/a/a/f;

    move-result-object v0

    const-string/jumbo v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lcom/google/a/a/f;->a(Ljava/lang/String;)Lcom/google/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/f;->i:Lcom/google/a/a/f;

    .line 219
    new-instance v0, Lcom/google/a/a/v;

    const-string/jumbo v1, "CharMatcher.INVISIBLE"

    const-string/jumbo v2, "\u0000\u007f\u00ad\u0600\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string/jumbo v3, " \u00a0\u00ad\u0604\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/a/v;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/a/a/f;->j:Lcom/google/a/a/f;

    .line 244
    new-instance v0, Lcom/google/a/a/v;

    const-string/jumbo v1, "CharMatcher.SINGLE_WIDTH"

    const-string/jumbo v2, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string/jumbo v3, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/a/v;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/a/a/f;->k:Lcom/google/a/a/f;

    .line 249
    new-instance v0, Lcom/google/a/a/q;

    const-string/jumbo v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcom/google/a/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->l:Lcom/google/a/a/f;

    .line 325
    new-instance v0, Lcom/google/a/a/r;

    const-string/jumbo v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcom/google/a/a/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->m:Lcom/google/a/a/f;

    .line 1385
    new-instance v0, Lcom/google/a/a/k;

    const-string/jumbo v1, "CharMatcher.WHITESPACE"

    invoke-direct {v0, v1}, Lcom/google/a/a/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/a/f;->o:Lcom/google/a/a/f;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/f;->n:Ljava/lang/String;

    .line 607
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/google/a/a/f;->n:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public static a(C)Lcom/google/a/a/f;
    .locals 2
    .parameter

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CharMatcher.is(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/a/a/f;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/google/a/a/s;

    invoke-direct {v1, v0, p0}, Lcom/google/a/a/s;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method public static a(CC)Lcom/google/a/a/f;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 547
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CharMatcher.inRange(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/a/a/f;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/a/a/f;->c(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {p0, p1, v0}, Lcom/google/a/a/f;->a(CCLjava/lang/String;)Lcom/google/a/a/f;

    move-result-object v0

    return-object v0

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(CCLjava/lang/String;)Lcom/google/a/a/f;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    new-instance v0, Lcom/google/a/a/j;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/a/a/j;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/google/a/a/f;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 492
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CharMatcher.anyOf(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v1, v0

    .line 495
    invoke-static {v4}, Lcom/google/a/a/f;->c(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :pswitch_0
    sget-object v0, Lcom/google/a/a/f;->m:Lcom/google/a/a/f;

    .line 498
    :goto_1
    return-object v0

    .line 484
    :pswitch_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/f;->a(C)Lcom/google/a/a/f;

    move-result-object v0

    goto :goto_1

    .line 486
    :pswitch_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CharMatcher.anyOf(\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/a/a/f;->c(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/a/a/f;->c(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/a/a/i;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/a/a/i;-><init>(Ljava/lang/String;CC)V

    goto :goto_1

    .line 497
    :cond_0
    const-string/jumbo v0, "\")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v0, Lcom/google/a/a/h;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/a/a/h;-><init>(Ljava/lang/String;[C)V

    goto :goto_1

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c(C)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 226
    const-string/jumbo v1, "0123456789ABCDEF"

    .line 227
    const/4 v0, 0x6

    new-array v2, v0, [C

    fill-array-data v2, :array_0

    .line 228
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 229
    rsub-int/lit8 v3, v0, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 230
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :array_0
    .array-data 0x2
        0x5ct 0x0t
        0x75t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 998
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 999
    invoke-static {p2, v1}, Lcom/google/a/a/an;->b(II)I

    move v0, p2

    .line 1000
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1001
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/a/a/f;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1005
    :goto_1
    return v0

    .line 1000
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/google/a/a/f;)Lcom/google/a/a/f;
    .locals 2
    .parameter

    .prologue
    .line 717
    new-instance v1, Lcom/google/a/a/u;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/f;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/u;-><init>(Lcom/google/a/a/f;Lcom/google/a/a/f;)V

    return-object v1
.end method

.method a(Ljava/lang/String;)Lcom/google/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 772
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 1
    .parameter

    .prologue
    .line 1332
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/a/f;->b(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/a/a/f;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public abstract b(C)Z
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter

    .prologue
    .line 939
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 940
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/a/a/f;->b(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    const/4 v0, 0x0

    .line 944
    :goto_1
    return v0

    .line 939
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 944
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/google/a/a/f;->n:Ljava/lang/String;

    return-object v0
.end method
