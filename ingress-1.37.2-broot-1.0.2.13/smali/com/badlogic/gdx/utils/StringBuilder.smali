.class public Lcom/badlogic/gdx/utils/StringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field public chars:[C

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-gez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 56
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 70
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 71
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 87
    if-le p1, v0, :cond_0

    :goto_0
    new-array v0, p1, [C

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 90
    return-void

    :cond_0
    move p1, v0

    .line 87
    goto :goto_0
.end method

.method private move(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v2, p2, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 316
    if-le v0, v1, :cond_1

    .line 317
    :goto_1
    new-array v0, v0, [C

    .line 318
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v2, p2, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    goto :goto_0

    :cond_1
    move v0, v1

    .line 316
    goto :goto_1
.end method


# virtual methods
.method public append(C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 703
    return-object p0
.end method

.method public append(D)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 746
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 747
    return-object p0
.end method

.method public append(F)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 735
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 736
    return-object p0
.end method

.method public append(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 714
    return-object p0
.end method

.method public append(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 724
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 725
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 3
    .parameter

    .prologue
    .line 814
    if-nez p1, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 818
    :goto_0
    return-object p0

    .line 817
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    goto :goto_0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 840
    :goto_0
    return-object p0

    .line 839
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 805
    if-nez p1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 810
    :goto_0
    return-object p0

    .line 808
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 832
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 762
    :goto_0
    return-object p0

    .line 760
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter

    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 771
    return-object p0
.end method

.method public append(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 691
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 692
    return-object p0

    .line 691
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public append([C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 782
    return-object p0
.end method

.method public append([CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 796
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method final append0(C)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char p1, v0, v1

    .line 134
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string/jumbo p1, "null"

    .line 154
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 158
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 142
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 144
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 146
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 147
    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_0
.end method

.method final append0([C)V
    .locals 4
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 105
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 108
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v3, p1

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 110
    return-void
.end method

.method final append0([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Offset out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_3

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Length out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    add-int v0, p3, p3

    .line 122
    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 123
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 125
    :cond_4
    invoke-static {p1, p2, p1, p3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-void
.end method

.method public appendCodePoint(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter

    .prologue
    .line 850
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 851
    return-object p0
.end method

.method final appendNull()V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x4

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v3, v0, v1

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v3, v0, v1

    .line 101
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .parameter

    .prologue
    .line 176
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 2
    .parameter

    .prologue
    .line 632
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .parameter

    .prologue
    .line 647
    if-lez p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 664
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public delete(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 862
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->delete0(II)V

    .line 863
    return-object p0
.end method

.method final delete0(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 183
    if-ltz p1, :cond_3

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_0

    .line 185
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 187
    :cond_0
    if-ne p2, p1, :cond_1

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_1
    if-le p2, p1, :cond_3

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, p2

    .line 192
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p2, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_0

    .line 197
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public deleteCharAt(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->deleteCharAt0(I)V

    .line 874
    return-object p0
.end method

.method final deleteCharAt0(I)V
    .locals 4
    .parameter

    .prologue
    .line 201
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 204
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 205
    if-lez v0, :cond_2

    .line 206
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 209
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 220
    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 222
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    if-ne p0, p1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v0

    .line 1072
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 1073
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 1074
    :cond_3
    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1075
    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1076
    iget v2, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v3, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1077
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1078
    iget-object v5, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1079
    if-eq v4, v5, :cond_0

    .line 1080
    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v2, v1

    .line 1081
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1082
    aget-char v6, v4, v2

    aget-char v7, v5, v2

    if-eq v6, v7, :cond_7

    move v0, v1

    goto :goto_0

    .line 1081
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-void
.end method

.method final getValue()[C
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1063
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1f

    .line 1066
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    add-int/2addr v0, v1

    .line 1067
    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 520
    if-gez p2, :cond_0

    move p2, v0

    .line 523
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 524
    if-lez v4, :cond_8

    .line 525
    add-int v2, v4, p2

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le v2, v3, :cond_2

    move p2, v1

    .line 551
    :cond_1
    :goto_0
    return p2

    .line 528
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 532
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p2, v2, :cond_9

    .line 533
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v2, v2, p2

    if-ne v2, v5, :cond_4

    .line 534
    const/4 v2, 0x1

    .line 538
    :goto_2
    if-eqz v2, :cond_3

    add-int v2, v4, p2

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le v2, v3, :cond_5

    :cond_3
    move p2, v1

    .line 539
    goto :goto_0

    .line 532
    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    move v2, v0

    move v3, p2

    .line 542
    :cond_6
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_7

    iget-object v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_6

    .line 545
    :cond_7
    if-eq v2, v4, :cond_1

    .line 548
    add-int/lit8 p2, p2, 0x1

    .line 549
    goto :goto_1

    .line 551
    :cond_8
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v0, :cond_1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_0

    :cond_9
    move v2, v0

    goto :goto_2
.end method

.method public insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(IC)V

    .line 900
    return-object p0
.end method

.method public insert(ID)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 951
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 952
    return-object p0
.end method

.method public insert(IF)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 938
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 939
    return-object p0
.end method

.method public insert(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 912
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 913
    return-object p0
.end method

.method public insert(IJ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 925
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 926
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1019
    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1020
    return-object p0

    .line 1019
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1036
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 1037
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 964
    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 965
    return-object p0

    .line 964
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 976
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 977
    return-object p0
.end method

.method public insert(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 886
    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 887
    return-object p0

    .line 886
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public insert(I[C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[C)V

    .line 990
    return-object p0
.end method

.method public insert(I[CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[CII)V

    .line 1006
    return-object p0
.end method

.method final insert0(IC)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 268
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 272
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 275
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    if-nez p2, :cond_0

    .line 295
    const-string/jumbo p2, "null"

    .line 297
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 300
    :cond_2
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 301
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 278
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_2

    .line 279
    if-nez p2, :cond_0

    .line 280
    const-string/jumbo p2, "null"

    .line 282
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 285
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 286
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 288
    :cond_1
    return-void

    .line 289
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(I[C)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 241
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 244
    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 245
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 246
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 249
    :cond_2
    return-void
.end method

.method final insert0(I[CII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    if-ltz p1, :cond_2

    if-gt p1, p4, :cond_2

    .line 254
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    .line 255
    if-eqz p4, :cond_0

    .line 256
    invoke-direct {p0, p4, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 257
    invoke-static {p2, p3, p2, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_0
    return-void

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", char[].length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 563
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 577
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt v4, v1, :cond_7

    if-ltz p2, :cond_7

    .line 578
    if-lez v4, :cond_6

    .line 579
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v4

    if-le p2, v1, :cond_0

    .line 580
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int p2, v1, v4

    .line 583
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 587
    :goto_0
    if-ltz p2, :cond_8

    .line 588
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v1, v1, p2

    if-ne v1, v5, :cond_2

    .line 589
    const/4 v1, 0x1

    .line 593
    :goto_1
    if-nez v1, :cond_3

    move p2, v0

    .line 608
    :cond_1
    :goto_2
    return p2

    .line 587
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    move v1, v2

    move v3, p2

    .line 597
    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    .line 600
    :cond_5
    if-eq v1, v4, :cond_1

    .line 603
    add-int/lit8 p2, p2, -0x1

    .line 604
    goto :goto_0

    .line 606
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v0, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_2

    :cond_7
    move p2, v0

    .line 608
    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1050
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1051
    return-object p0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    if-ltz p1, :cond_5

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_0

    .line 327
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 329
    :cond_0
    if-le p2, p1, :cond_3

    .line 330
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 331
    sub-int v1, p2, p1

    sub-int/2addr v1, v0

    .line 332
    if-lez v1, :cond_2

    .line 334
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v4, p1, v0

    iget v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p3, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 340
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 348
    :goto_1
    return-void

    .line 335
    :cond_2
    if-gez v1, :cond_1

    .line 337
    neg-int v2, v1

    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    goto :goto_0

    .line 343
    :cond_3
    if-ne p1, p2, :cond_5

    .line 344
    if-nez p3, :cond_4

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 347
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public reverse()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->reverse0()V

    .line 1059
    return-object p0
.end method

.method final reverse0()V
    .locals 12

    .prologue
    .line 355
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v7, v0, -0x1

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    aget-char v6, v0, v1

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v4, v0, v7

    .line 361
    const/4 v2, 0x1

    const/4 v1, 0x1

    .line 362
    const/4 v0, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    div-int/lit8 v9, v3, 0x2

    move v11, v1

    move v1, v2

    move v2, v11

    :goto_1
    if-ge v0, v9, :cond_8

    .line 363
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v5, v0, 0x1

    aget-char v5, v3, v5

    .line 364
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v8, v7, -0x1

    aget-char v3, v3, v8

    .line 365
    if-eqz v1, :cond_3

    const v1, 0xdc00

    if-lt v5, v1, :cond_3

    const v1, 0xdfff

    if-gt v5, v1, :cond_3

    const v1, 0xd800

    if-lt v6, v1, :cond_3

    const v1, 0xdbff

    if-gt v6, v1, :cond_3

    const/4 v1, 0x1

    move v8, v1

    .line 367
    :goto_2
    if-eqz v8, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v10, 0x3

    if-lt v1, v10, :cond_0

    .line 370
    :cond_2
    if-eqz v2, :cond_4

    const v1, 0xd800

    if-lt v3, v1, :cond_4

    const v1, 0xdbff

    if-gt v3, v1, :cond_4

    const v1, 0xdc00

    if-lt v4, v1, :cond_4

    const v1, 0xdfff

    if-gt v4, v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    .line 371
    :goto_3
    const/4 v1, 0x1

    .line 372
    if-ne v8, v2, :cond_6

    .line 373
    if-eqz v8, :cond_5

    .line 375
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v5, v2, v7

    .line 376
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v5, v7, -0x1

    aput-char v6, v2, v5

    .line 377
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v3, v2, v0

    .line 378
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v4, v2, v3

    .line 379
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v3, v0, 0x2

    aget-char v3, v2, v3

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v4, v7, -0x2

    aget-char v2, v2, v4

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 382
    add-int/lit8 v4, v7, -0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    .line 362
    :goto_4
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v5, -0x1

    move v6, v4

    move v4, v3

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_1

    .line 365
    :cond_3
    const/4 v1, 0x0

    move v8, v1

    goto :goto_2

    .line 370
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    goto :goto_3

    .line 385
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v2, v7

    .line 386
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v4, v2, v0

    move v2, v1

    move v4, v5

    move v5, v7

    .line 388
    goto :goto_4

    .line 391
    :cond_6
    if-eqz v8, :cond_7

    .line 393
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v5, v2, v7

    .line 394
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v4, v2, v0

    .line 396
    const/4 v2, 0x0

    move v4, v6

    move v5, v7

    goto :goto_4

    .line 399
    :cond_7
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v2, v7

    .line 400
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v3, v2, v0

    .line 402
    const/4 v2, 0x0

    move v3, v4

    move v4, v5

    move v5, v7

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_4

    .line 406
    :cond_8
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eqz v1, :cond_9

    if-nez v2, :cond_0

    .line 407
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    if-eqz v1, :cond_a

    :goto_5
    aput-char v4, v0, v7

    goto/16 :goto_0

    :cond_a
    move v4, v6

    goto :goto_5
.end method

.method public setCharAt(IC)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    .line 421
    return-void
.end method

.method public setLength(I)V
    .locals 3
    .parameter

    .prologue
    .line 430
    if-gez p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 434
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 440
    :cond_1
    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 441
    return-void

    .line 436
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v0, p1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 449
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    .line 450
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne p1, v0, :cond_0

    .line 451
    const-string/jumbo v0, ""

    .line 455
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 468
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_1

    .line 469
    if-ne p1, p2, :cond_0

    .line 470
    const-string/jumbo v0, ""

    .line 474
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 484
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 485
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public trimToSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 617
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    new-array v0, v0, [C

    .line 618
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 621
    :cond_0
    return-void
.end method
