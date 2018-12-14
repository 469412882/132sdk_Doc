.class public final Lcom/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field private matrixWidth:I

.field private mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private numDataBytes:I

.field private numECBytes:I

.field private numRSBlocks:I

.field private numTotalBytes:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 43
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    .line 45
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    .line 46
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 47
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    .line 48
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    .line 49
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    .line 50
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    .line 51
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public at(II)I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 112
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bad value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return p1
.end method

.method public getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getMaskPattern()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    return v0
.end method

.method public getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-object v0
.end method

.method public getMatrixWidth()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    return v0
.end method

.method public getMode()Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method public getNumDataBytes()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    return v0
.end method

.method public getNumECBytes()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    return v0
.end method

.method public getNumRSBlocks()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    return v0
.end method

.method public getNumTotalBytes()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public setMaskPattern(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    return-void
.end method

.method public setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-void
.end method

.method public setMatrixWidth(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    return-void
.end method

.method public setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-void
.end method

.method public setNumDataBytes(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    return-void
.end method

.method public setNumECBytes(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    return-void
.end method

.method public setNumRSBlocks(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    return-void
.end method

.method public setNumTotalBytes(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "<<\n"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " mode: "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n ecLevel: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n version: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n matrixWidth: "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n maskPattern: "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n numTotalBytes: "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n numDataBytes: "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n numECBytes: "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n numRSBlocks: "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ">>\n"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
